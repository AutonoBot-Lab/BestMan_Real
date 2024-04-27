'''
相机标定 生成标定参数(相机内参与畸变系数)
使用Radon标定板
----------------------------------------------
@作者: 阿凯爱玩机器人
@QQ: 244561792
@微信: xingshunkai
@邮箱: xingshunkai@qq.com
@B站: https://space.bilibili.com/40344504
'''
import cv2
import numpy as np
import yaml
from matplotlib import pyplot as plt
from glob import glob

class CameraCalibration:

	def __init__(self):
		with open('config/camera_calibration.yaml', 'r', encoding='utf-8') as f:
			self.config = yaml.load(f.read(), Loader=yaml.SafeLoader)

		# 棋盘角点矩阵的 行数
		# self.corner_row = corner_row
		self.corner_row = self.config['caliboard']['row']
		# 棋盘角点矩阵的 列数
		# self.corner_column = corner_column
		self.corner_column = self.config['caliboard']['column']
		# 角点的数量
		self.corner_num = self.corner_row * self.corner_column
		# 标定板类型
		self.type = self.config['caliboard']['type']
		# 存放标定素材的文件夹
		self.img_folder = self.config['cali_img_source_path']
		self.img_dict = {}
		self.img_num = 0

		# 随意读入一张照片获取高度跟宽度
		tmp_img = cv2.imread(glob("%s/*.png"%(self.img_folder))[0])
		self.img_width = tmp_img.shape[1] 
		self.img_height = tmp_img.shape[0]

		#　角点坐标集合
		self.corners = None
		
		# 真实世界(3D)点集 z轴均设为0
		# x坐标与y坐标的组合, z坐标恒为0
		# 行号先变，列号再变
		# [(0, 0), (1, 0), (2, 0), ... ， (0, 1), (1, 1), (2, 1)， ... (0, column)]
		x, y = np.meshgrid(range(self.corner_row), range(self.corner_column))
		self.world_points = np.hstack((x.reshape(self.corner_num, 1), y.reshape(self.corner_num, 1), np.zeros((self.corner_num, 1)))).astype(np.float32)
		# 考虑进格子的尺寸 单位mm
		self.world_points *=  self.config['caliboard']['ceil_size']
		
		self.intrinsic = None # 内参矩阵
		self.distortion = None # 畸变参数
		self.rotate_vects = None
		self.trans_vects = None

		# ReMap Function 映射函数, 用于去除畸变
		self.remap_x = None
		self.remap_y = None

		self.points2d = []
		self.points3d = []


		self.set_img_dict()
		self.set_points()

		self.newcameramtx = None
		self.roi = None

		self.calibrate()
	
	def set_img_dict(self):
		# 校验图像是否具备完整的角点
		# 如果是部分就排除
		img_paths = glob("%s/*.png"%(self.img_folder))
		print("检测到{}张标定图像".format(len(img_paths)))
		for img_path in img_paths:
			img = cv2.imread(img_path)
			img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
			corners = []
			if self.type == "radon":
				ret, corners, meta = cv2.findChessboardCornersSBWithMeta(img_gray, (self.corner_row, self.corner_column), \
					flags=cv2.CALIB_CB_ACCURACY|cv2.CALIB_CB_EXHAUSTIVE|cv2.CALIB_CB_NORMALIZE_IMAGE)
			else:
				ret, corners = cv2.findChessboardCorners(img, (self.corner_row, self.corner_column))
			if ret:
				# 判断是否正确获取 所有角点
				self.img_dict[img_path] = {
					"corner": corners, # 角点
					"rotate" : None, # 旋转矩阵
					"trans" : None  # 平移向量
				}
				self.img_num += 1

			else:
				print("[WARN] img{}.png > 图片缺失完整角点".format(img_path))
	
	def set_points(self):

		# 设置3D与2D的数组
		for img_path,data  in self.img_dict.items():
			self.points2d.append(data["corner"])
			self.points3d.append(self.world_points)
	
	def calibrate(self):
		# 标定相机
		ret, mtx, dist, revecs, tvecs = cv2.calibrateCamera(self.points3d, self.points2d, (self.img_width, self.img_height), None, None)
		
		if ret:
			self.intrinsic = mtx
			self.distortion = dist
			self.rotate_vects = revecs
			self.trans_vects = tvecs
			
			# 畸变矫正相关
			# 根据图像缩放尺寸， 重新计算相机内参矩阵 
			self.newcameramtx, self.roi=cv2.getOptimalNewCameraMatrix(self.intrinsic, self.distortion, (self.img_width, self.img_height), 0,(self.img_width,self.img_height))
			self.remap_x, self.remap_y = cv2.initUndistortRectifyMap(self.intrinsic, self.distortion,None,self.newcameramtx,(self.img_width, self.img_height), 5)
			count = 0
			# 设置3D与2D的数组
			for img_path  in self.img_dict:
				self.img_dict[img_path]["rotate"] = self.rotate_vects[count]
				self.img_dict[img_path]["trans"] = self.trans_vects[count]
				count += 1
		else:
			print("Error during camera calibration")

	def print_parameter(self):
		with np.printoptions(precision=3, suppress=True):
			print("相机内参 intrinsic")
			print(self.intrinsic)

			print("畸变参数 distortion")
			print(self.distortion)


	def dump_camera_info(self):
		# 相机标定参数保存
		np.savetxt('config/M_intrisic.txt', self.intrinsic, delimiter=',', fmt='%.3f')
		np.savetxt('config/distor_coeff.txt', self.distortion,  delimiter=',', fmt='%.3f')
		# 相机标定参数保存
		np.savetxt('config/M_intrisic_new.txt', self.newcameramtx, delimiter=',', fmt='%.3f')
		np.savetxt('config/remap_x.txt', self.remap_x,  delimiter=',', fmt='%.3f')
		np.savetxt('config/remap_y.txt', self.remap_y,  delimiter=',', fmt='%.3f')

if __name__ == "__main__":
	cc = CameraCalibration()
	cc.print_parameter()
	cc.dump_camera_info()

	
