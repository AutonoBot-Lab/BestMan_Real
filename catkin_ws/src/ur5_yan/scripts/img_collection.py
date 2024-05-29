#!/usr/bin/env python
#!coding=utf-8
 
import rospy
import numpy as np
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
 
wrist_path  = '/home/yan/catkin_ws/src/ur5_yan/data/img/wrist/'
 
def callback(data):
    global count,bridge
    count = count + 1
    cv_img = bridge.imgmsg_to_cv2(data, "bgr8")
    timestr = "%.6f" %  data.header.stamp.to_sec()
    image_name = timestr + ".jpg"
    if count % 300 == 0:
        cv2.imwrite(wrist_path + image_name, cv_img)
        cv2.imshow("frame" , cv_img)
        cv2.waitKey(3)
 
def displayWebcam():
    rospy.init_node('webcam_display', anonymous=True)
    # make a video_object and init the video object
    global count,bridge
    count = 0
    bridge = CvBridge()
    rospy.Subscriber('/usb_cam/image_raw', Image, callback)
    rospy.spin()
 
if __name__ == '__main__':
    displayWebcam()
 