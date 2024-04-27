'''
动态识别标定板并对其进行位姿估计
----------------------------------------------
@作者: 阿凯爱玩机器人
@QQ: 244561792
@微信: xingshunkai
@邮箱: xingshunkai@qq.com
@B站: https://space.bilibili.com/40344504
'''
import numpy as np # 引入numpy 用于矩阵运算
import cv2 # 引入opencv库函数
import yaml
from pose import Pose

# 1.载入标定板配置文件
caliboard_config = None
with open('config/camera_calibration.yaml', 'r', encoding='utf-8') as f:
	caliboard_config = yaml.load(f.read(), Loader=yaml.SafeLoader)
# 标定板角点配置
n_row = caliboard_config['caliboard']['row']
n_column = caliboard_config['caliboard']['column']
n_corner = n_row*n_column
# 2.获取标定板角点的世界坐标
# 行与列的索引号
x, y = np.meshgrid(range(n_row), range(n_column))
# 标定板角点在标定板坐标系下的坐标
world_points = np.hstack((x.reshape(n_corner, 1), y.reshape(n_corner, 1), np.zeros((n_corner, 1)))).astype(np.float64)
world_points *= caliboard_config["caliboard"]["ceil_size"]

# 3. 导入相机标定数据
# 载入重映射矩阵
remap_x = np.loadtxt('config/remap_x.txt', delimiter=',').astype("float32")
remap_y = np.loadtxt('config/remap_y.txt', delimiter=',').astype("float32")
# 新的相机内参矩阵(畸变去除后)
M_intrisic_new = np.loadtxt('config/M_intrisic_new.txt', delimiter=',')
# 因为是按畸变去除后的图像来计算，因此畸变系数为零向量
distor_coeff = np.ndarray([0, 0, 0, 0, 0]).astype("float32")

# 摄像头ID
cam_id = 2
# 创建一个video capture的实例
cap = cv2.VideoCapture(cam_id)

# 查看Video Capture是否已经打开
print("摄像头是否已经打开 ？ {}".format(cap.isOpened()))

## 设置画面的尺寸
# 画面宽度设定为 1920
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1920)
# 画面高度度设定为 1080
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 1080)

## 创建一个名字叫做 “image_win” 的窗口
cv2.namedWindow('image_win',flags=cv2.WINDOW_NORMAL | cv2.WINDOW_KEEPRATIO | cv2.WINDOW_GUI_EXPANDED)

# 图像计数
count = 1

while(True):
	# 获取摄像头的画面
	ret, frame = cap.read()
	if not ret:
		# 如果图片没有读取成功
		print("图像获取失败，请按照说明进行问题排查")
		break
	# 图像去除畸变
	img_undistor = cv2.remap(frame, remap_x, remap_y, cv2.INTER_LINEAR)
	# 转换为灰度图
	img_undistor_gray = cv2.cvtColor(img_undistor, cv2.COLOR_BGR2GRAY)
	# 识别标定板角点
	ret, corners, meta = cv2.findChessboardCornersSBWithMeta(img_undistor_gray, (n_row, n_column), \
			flags=cv2.CALIB_CB_ACCURACY|cv2.CALIB_CB_EXHAUSTIVE, meta=4)
	# 创建画布
	canvas = np.copy(img_undistor)
	
	if ret:
		# 绘制标定板角点
		canvas = cv2.drawChessboardCorners(canvas, (n_row, n_column), corners[:n_row], patternWasFound=True)
	
		# 3D点 为角点在标定板坐标系下的位姿
		points_3d = np.float64(world_points)
		# 2D点 为角点在图像上的亚像素坐标
		points_2d = np.float64(corners)
		# 求解PnP问题
		ret, rvec, tvec, *_ = cv2.solvePnPRansac(points_3d, points_2d, \
                            M_intrisic_new, \
                            distor_coeff, \
                            flags=cv2.SOLVEPNP_ITERATIVE)

  		# 计算T_board2cam
		pose_cam2board = Pose()
		pose_cam2board.set_position(*tvec.reshape(-1))
		pose_cam2board.set_rotation_vector(rvec.reshape(-1))
		T_cam2board = pose_cam2board.get_transform_matrix()
		
		# 坐标轴长度( 单位 mm)
		axis_length = 100.0
		# 跟坐标轴相关的3D点
		axis_points_3d = np.array([
			[0.0, 0.0, 0.0], 
			[axis_length,0.0, 0.0],
			[0.0, axis_length, 0.0],
			[0.0, 0.0, axis_length]], dtype="float32")
		axis_points_2d, jacobian = cv2.projectPoints(axis_points_3d, 
								rvec, tvec, M_intrisic_new, distor_coeff)

		# 转换为像素坐标(整数)
		axis_points_2d = axis_points_2d.reshape((-1, 2)).astype('int32')
		center, axis_x, axis_y, axis_z = axis_points_2d
		# 绘制坐标轴
		axis_thickness = 10
		cv2.line(canvas, center, axis_x, (0, 0, 255), axis_thickness)
		cv2.line(canvas, center, axis_y, (0, 255, 0), axis_thickness)
		# cv2.line(canvas, center, axis_z, (255, 0, 0), axis_thickness)
		# 绘制位姿信息
		x, y, z = pose_cam2board.get_position()
		roll, pitch, yaw = [np.degrees(theta) for theta in  pose_cam2board.get_euler_angle()]
		posi_str = "POSI(mm): [{:.1f},{:.1f},{:.1f}]".format(x, y, z)
		rpy_str = "RPY(deg): [{:.1f},{:.1f},{:.1f}]".format(roll, pitch, yaw)
		# 选择字体
		font = cv2.FONT_HERSHEY_SIMPLEX
		canvas[:150, :900] = [255, 255, 255]
		cv2.putText(canvas, text=posi_str, org=(50, 50), fontFace=font, \
			fontScale=1.5, thickness=2, lineType=cv2.LINE_AA, color=(0, 0, 255))
		cv2.putText(canvas, text=rpy_str, org=(50, 120), fontFace=font, \
			fontScale=1.5, thickness=2, lineType=cv2.LINE_AA, color=(0, 255, 0))
			  	  
	# 更新窗口“image_win”中的图片
	cv2.imshow('image_win',canvas)
	# 等待按键事件发生 等待1ms
	key = cv2.waitKey(1)
	if key == ord('q'):
		# 如果按键为q 代表quit 退出程序
		print("程序正常退出")
		break
# 释放VideoCapture
cap.release()
# 销毁所有的窗口
cv2.destroyAllWindows()