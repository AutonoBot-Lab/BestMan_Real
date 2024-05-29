#! /usr/bin/env python

# Python 
import time
import numpy as np
from copy import deepcopy, copy
import argparse

# CNN
import tensorflow as tf
from keras.models import load_model
from tf import TransformBroadcaster, TransformListener

# Image
import cv2
import scipy.ndimage as ndimage
from skimage.draw import circle
from skimage.feature import peak_local_max

# ROS
import rospy
import rospkg
from cv_bridge import CvBridge
from sensor_msgs.msg import Image, CameraInfo, JointState
from std_msgs.msg import Float32MultiArray, Int32MultiArray, String, Bool, Int8
from tf.transformations import quaternion_from_euler
from std_msgs.msg import String

def parse_args():
	parser = argparse.ArgumentParser(description='GG-CNN Node')
	args = parser.parse_args()
	return args

args = parse_args()

class TimeIt:
	def __init__(self, s):
		self.s = s
		self.t0 = None
		self.t1 = None
		self.print_output = False

	def __enter__(self):
		self.t0 = time.time()

	def __exit__(self, t, value, traceback):
		self.t1 = time.time()
		# print('%s: %s' % (self.s, self.t1 - self.t0))
		
class ssgg_grasping(object):
	def __init__(self):
		rospy.init_node('ggcnn_ssd_detection')

		self.bridge = CvBridge()

		# Load the Network.
		rospack = rospkg.RosPack()
		MODEL_FILE = '/home/yan/catkin_ws/src/ur5_yan/data/epoch_29_model.hdf5'
		with tf.device('/device:GPU:0'):
			self.model = load_model(MODEL_FILE)

		# TF pkg
		self.transf = TransformListener()
		self.br = TransformBroadcaster()

		# Load GGCN parameters
		self.crop_size = 300
		self.FOV = 65.5
		camera_topic_info = '/camera/depth/camera_info'
		camera_topic = '/camera/depth/image_raw'
		
		# Output publishers.
		self.grasp_pub = rospy.Publisher('ggcnn/img/grasp', Image, queue_size=1) # Grasp quality
		self.depth_pub = rospy.Publisher('ggcnn/img/depth', Image, queue_size=1) # Depth cropped image 
		self.width_pub = rospy.Publisher('ggcnn/img/width', Image, queue_size=1) # Gripepr width
		self.depth_pub_copied_img = rospy.Publisher('ggcnn/img/depth_shot_with_copied_img', Image, queue_size=1)
		self.depth_pub_shot = rospy.Publisher('ggcnn/img/depth_shot', Image, queue_size=1) # Image taken 
		self.ang_pub = rospy.Publisher('ggcnn/img/ang', Image, queue_size=1) # Gripper angle
		self.cmd_pub = rospy.Publisher('ggcnn/out/command', Float32MultiArray, queue_size=1) # Command sent to robot
		self.grasp_ready = rospy.Publisher('flags/grasp_ready', Bool, queue_size=1) # grasp ready flag

		# Subscribers
		rospy.Subscriber(camera_topic, Image, self.get_depth_callback, queue_size=10)
		rospy.Subscriber('bb_points_array', Int32MultiArray, self.bounding_boxes_callback, queue_size=10)
		rospy.Subscriber('label_array', Int32MultiArray, self.labels_callback, queue_size=10)
		rospy.Subscriber('flags/detection_ready', Bool, self.detection_ready_callback ,queue_size=1) # Detection node detected something and is asking to generate a grasp pose
		rospy.Subscriber("pipeline/required_class", Int8, self.required_pipeline_class_callback, queue_size=10)
		self.required_pipeline_class = 100

		# Initialize some var
		self.depth_crop = None
		self.depth_copy_for_point_depth = None
		self.points_out = None
		self.grasp_img = None
		self.ang_out = None
		self.width_out = None
		self.ang = 0.0
		self.width_px = 0.0
		self.width_m = 0.0
		self.g_width = 0.0
		self.grasping_point = []
		self.points_vec = []
		self.cropped = None # Depth raw image 
		self.max_pixel = np.array([150, 150])
		self.max_pixel_reescaled = np.array([150, 150])

		self.receive_bb = False
		self.receive_label_array = False

		# Tensorflow graph to allow use in callback.
		self.graph = tf.get_default_graph()

		# Get the camera parameters
		camera_info_msg = rospy.wait_for_message(camera_topic_info, CameraInfo)
		K = camera_info_msg.K
		self.fx = K[0]
		self.cx = K[2]
		self.fy = K[4]
		self.cy = K[5]        
	
	def get_depth_callback(self, depth_message):
		"""
		Store the raw depth image when the message is received
		"""
		self.depth_message = depth_message
	
	def detection_ready_callback(self, msg):
		"""
		Stores the flag that indicates when the detection node is ready
		The grasp will only be generated when the detection node is ready
		"""
		self.detection_ready_status = msg
	
	def required_pipeline_class_callback(self, msg):
		"""
		required_pipeline_class is the ID of the object to be grasped
		"""
		self.required_pipeline_class = msg.data
	
	def labels_callback(self, labels):
		"""

		"""
		labels = list(labels.data)
		
		label_list_int = []
		for label in labels:
			label_list_int.append(label)

		self.label_list_int = label_list_int
		self.receive_label_array = True
		
	def bounding_boxes_callback(self, msg):        
		box_number = len(msg.data) / 4		
		box_points = list(msg.data)
		
		i, index_inf, index_sup = 0, 0, 4
		points_vec = []
		
		while i < box_number:
			# Get each one of the 4 coordinates of each bounding box
			points_from_box = box_points[index_inf: index_sup]

			# The bounding box coordinate is corrected in the detection node
			bb_coordinates = [points_from_box[0], points_from_box[1], points_from_box[2], points_from_box[3]]

			points_vec.append(bb_coordinates)
			index_inf += 4
			index_sup += 4
			i += 1
			
		self.points_vec = points_vec
		self.receive_bb = True

	def get_depth_image_shot(self):
		# Store the depth image when no objects are in the workspace
		self.depth_image_shot_raw = rospy.wait_for_message("camera/depth/image_raw", Image)
		self.depth_image_shot_raw.header = self.depth_message.header    

	def copy_obj_to_depth_img(self):
		# print('Detection ready status: ', self.detection_ready_status)
		# print('Receive_lb: ', self.receive_lb)
		if self.receive_label_array and self.detection_ready_status:
			label_list_int = self.label_list_int
			if self.receive_bb and (self.required_pipeline_class in label_list_int):
				points_vec = self.points_vec			

				required_pipeline_class_index = label_list_int.index(self.required_pipeline_class)
				chosen_points_vec = points_vec[required_pipeline_class_index]

				# Copy the raw depth image
				depth_image_shot_raw = self.bridge.imgmsg_to_cv2(self.depth_image_shot_raw)
				depth_image_shot_raw_copy_cv2 = depth_image_shot_raw.copy()

				# Copy the actual depth image 
				depth_message = self.bridge.imgmsg_to_cv2(self.depth_message)
				depth_message_copy = depth_message.copy()

				number_of_boxes = len(chosen_points_vec)
				number_of_boxes = 3
				if number_of_boxes > 0:
					depth_image_shot_raw_copy_cv2[chosen_points_vec[1] : chosen_points_vec[3], chosen_points_vec[0] : chosen_points_vec[2]] \
						= depth_message_copy[chosen_points_vec[1] : chosen_points_vec[3], chosen_points_vec[0] : chosen_points_vec[2]] 

					# Transform the depth raw image with the identified objects copied into ros msg type
					depth_image_shot_raw_with_obj = self.bridge.cv2_to_imgmsg(depth_image_shot_raw_copy_cv2)
					depth_image_shot_raw_with_obj.header = self.depth_message.header
					self.depth_image_shot_with_object_copied = depth_image_shot_raw_with_obj

					# Publish the depth image with the objects
					self.depth_pub_copied_img.publish(depth_image_shot_raw_with_obj)
					# Publish the raw depth image shot taken at the beginning
					self.depth_pub_shot.publish(self.depth_image_shot_raw)
					# Publish the state of the detection
					
				self.receive_bb = False
				self.receive_label_array = False
				return number_of_boxes
			else:
				self.grasp_ready.publish(False)
		
		if not self.detection_ready_status:
			self.grasp_ready.publish(False)

	def depth_process_ggcnn(self):
		depth_message = self.depth_message
		# INPUT
		depth = self.bridge.imgmsg_to_cv2(depth_message)
		# cv2.imwrite('depth.png', depth)

		depth_copy_for_point_depth = depth.copy()
		height_res, width_res = depth.shape
		# It crops a 300x300 resolution square at the top of the depth image - depth[0:300, 170:470]
		depth_crop = depth[0 : self.crop_size,
						  (width_res - self.crop_size)//2 : (width_res - self.crop_size)//2 + self.crop_size]
		# Creates a deep copy of the depth_crop image
		depth_crop = depth_crop.copy()
		# Returns the positions represented by nan values
		depth_nan = np.isnan(depth_crop)
		depth_nan = depth_nan.copy()
		# Substitute nan values by zero
		depth_crop[depth_nan] = 0
		# INPAINT PROCESS
		depth_crop = cv2.copyMakeBorder(depth_crop, 1, 1, 1, 1, cv2.BORDER_DEFAULT)
		# se o numero que esta no vetor acima for 0, retorna o numero 1 na mesma posicao (como se fosse True)
		# se depth_crop == 0, retorna 1 como inteiro.
		# Ou seja, copia os pixels pretos da imagem e a posicao deles
		mask = (depth_crop == 0).astype(np.uint8)
		# Scale to keep as float, but has to be in bounds -1:1 to keep opencv happy.
		depth_scale = np.abs(depth_crop).max()
		# Normalize
		depth_crop = depth_crop.astype(np.float32) / depth_scale  # Has to be float32, 64 not supported
		# Substitute mask values by near values. See opencv doc for more detail
		depth_crop = cv2.inpaint(depth_crop, mask, 1, cv2.INPAINT_NS)
		# Back to original size and value range.
		depth_crop = depth_crop[1:-1, 1:-1]
		# reescale image
		depth_crop = depth_crop * depth_scale
		# INFERENCE PROCESS
		depth_crop = depth_crop/1000.0
		# values smaller than -1 become -1, and values larger than 1 become 1.
		depth_crop = np.clip((depth_crop - depth_crop.mean()), -1, 1)
		
		with self.graph.as_default():
			pred_out = self.model.predict(depth_crop.reshape((1, self.crop_size, self.crop_size, 1)))
		
		points_out = pred_out[0].squeeze()
		cos_out = pred_out[1].squeeze()
		sin_out = pred_out[2].squeeze()
		width_out = pred_out[3].squeeze() * 150.0  # Scaled 0-150:0-1
		points_out[depth_nan] = 0
		ang_out = np.arctan2(sin_out, cos_out) / 2.0
		# FILTERING PROCESS
		# The filters are applied to augment the chances of getting a good grasp pose
		points_out_filtered = ndimage.filters.gaussian_filter(points_out, 5.0)
		points_out_filtered = np.clip(points_out_filtered, 0.0, 1.0-1e-3)
		ang_out_filtered = ndimage.filters.gaussian_filter(ang_out, 2.0)
		width_out_filtered = ndimage.filters.gaussian_filter(width_out, 1.0)
		# CONTROL PROCESS
		link_pose, _ = self.transf.lookupTransform("base", "tool0_controller", rospy.Time(0))
		ROBOT_Z = link_pose[2]
		# Track the global max.
		# max_pixel correponds to the position of the max value in points_out_filtered
		max_pixel = np.array(np.unravel_index(np.argmax(points_out_filtered), points_out_filtered.shape))
		# Return max_pixel posiiton as an int (300x300)
		max_pixel = max_pixel.astype(np.int)
		ang = ang_out_filtered[max_pixel[0], max_pixel[1]]
		width_px = width_out_filtered[max_pixel[0], max_pixel[1]]
		reescaled_height = int(max_pixel[0])
		reescaled_width = int((width_res - self.crop_size) // 2 + max_pixel[1])
		max_pixel_reescaled = [reescaled_height, reescaled_width]
		point_depth = depth_copy_for_point_depth[max_pixel_reescaled[0], max_pixel_reescaled[1]]
		# GRASP WIDTH PROCESS
		g_width = 2.0 * (ROBOT_Z + 0.24) * np.tan(self.FOV / height_res * width_px / 2.0 / 180.0 * np.pi) #* 0.37
		crop_size_width = float(self.crop_size)
		width_m = width_out_filtered / crop_size_width * 2.0 * point_depth * np.tan(self.FOV * crop_size_width / height_res / 2.0 / 180.0 * np.pi) / 1000 #* 0.37
		width_m = abs(width_m[max_pixel[0], max_pixel[1]])
					
		if not np.isnan(point_depth):
			# These magic numbers are my camera intrinsic parameters.
			x = (max_pixel_reescaled[1] - self.cx)/(self.fx) * point_depth
			y = (max_pixel_reescaled[0] - self.cy)/(self.fy) * point_depth
			grasping_point = [x, y, point_depth]

			# OUTPUT
			self.ang_out = ang_out
			self.width_out = width_out
			self.points_out = points_out
			self.depth_message_ggcnn = depth_message
			self.depth_crop = depth_crop
			self.ang = ang
			self.width_px = width_px
			self.max_pixel = max_pixel
			self.max_pixel_reescaled = max_pixel_reescaled
			self.g_width = g_width
			self.width_m = width_m
			self.point_depth = point_depth
			self.grasping_point = grasping_point
		
	def get_grasp_image(self):
		"""
		Show the detected grasp regions of the image
		"""
		points_out = self.points_out
		# print('points_out:{}'.format(points_out))
		if points_out is not None:
			max_pixel = self.max_pixel
			# Draw grasp markers on the points_out and publish it. (for visualisation)
			# points_out was used in gaussian_filter for last
			grasp_img = np.zeros((self.crop_size, self.crop_size, 3), dtype=np.uint8)
			# Draw the red area in the image
			grasp_img[:,:,2] = (points_out * 255.0)
			# draw the circle at the green point
			rr, cc = circle(max_pixel[0], max_pixel[1], 5)
			grasp_img[rr, cc, 0] = 0
			grasp_img[rr, cc, 1] = 255
			grasp_img[rr, cc, 2] = 0
			# print('grasp_img:{}'.format(grasp_img))
			# cv2.imwrite('grasp_img.png', grasp_img)
			self.grasp_img = grasp_img

	def publish_images(self):
		grasp_img = self.grasp_img
		depth_message = self.depth_message_ggcnn
		ang_out = self.ang_out
		depth_crop = self.depth_crop
		width_img = self.width_out
		if grasp_img is not None:
			#Publish the output images (not used for control, only visualisation)
			grasp_img = self.bridge.cv2_to_imgmsg(grasp_img, 'bgr8')
			grasp_img.header = depth_message.header
			self.grasp_pub.publish(grasp_img)
			
			depth_crop = self.bridge.cv2_to_imgmsg(depth_crop)
			depth_crop.header = depth_message.header
			self.depth_pub.publish(depth_crop)
			
			self.ang_pub.publish(self.bridge.cv2_to_imgmsg(ang_out))
			self.width_pub.publish(self.bridge.cv2_to_imgmsg(width_img))
			
	def publish_data_to_robot(self):
		grasping_point = self.grasping_point
		ang = self.ang
		width_m = self.width_m
		g_width = self.g_width
		# Output the best grasp pose relative to camera.
		cmd_msg = Float32MultiArray()
		cmd_msg.data = [grasping_point[0]/1000.0, grasping_point[1]/1000.0, grasping_point[2]/1000.0, -1*ang, width_m, g_width]
		self.cmd_pub.publish(cmd_msg)
		
		self.br.sendTransform((cmd_msg.data[0], 
							cmd_msg.data[1], 
							cmd_msg.data[2]), 
							quaternion_from_euler(0.0, 0.0, -1*cmd_msg.data[3]),
							rospy.Time.now(),
							"object_detected",
							"rgb_camera_link")
		self.grasp_ready.publish(True)

def main():
	grasp_detection = ssgg_grasping()
	rospy.sleep(3.0)
	rospy.loginfo("Starting process")
	rate = rospy.Rate(4)
	while not rospy.is_shutdown():
		number_of_boxes = 3
		if number_of_boxes > 0:
			with TimeIt('ggcnn_process'):
				grasp_detection.depth_process_ggcnn()
				grasp_detection.get_grasp_image()
				grasp_detection.publish_images()
				grasp_detection.publish_data_to_robot()
		rate.sleep()

if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		print('Program interrupted before completion')
