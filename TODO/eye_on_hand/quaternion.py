'''
四元数基本运算与插补算法
* lerp: 直线插补
* nlerp: 规范化直线插补
* slerp: 球面圆弧线性插补
----------------------------------------------
@作者: 阿凯爱玩机器人
@QQ: 244561792
@微信: xingshunkai
@邮箱: xingshunkai@qq.com
@B站: https://space.bilibili.com/40344504
'''
import numpy as np
from numpy import sin, cos, arcsin, arccos
from transform import Transform

class Quaternion:
	'''四元数'''
	def __init__(self, w=1, x=0, y=0, z=0):
		'''初始化'''
		self.from_wxyz(w, x, y, z)
		
	def wxyz(self):
		'''以列表的形式返回四元数'''
		return [self.w, self.x, self.y, self.z]
	
	def xyzw(self):
		'''以列表的形式返回四元数'''
		return [self.x, self.y, self.z, self.w]
	
	@staticmethod
	def identity():
		'''单位四元数'''
		return Quaternion(1, 0, 0, 0)
	
	def copy(self):
		'''拷贝'''
		return Quaternion(self.w, self.x, self.y, self.z)
	
	def __str__(self) -> str:
		return "Quaternion[w={:.4f} x={:.4f} y={:.4f} z={:.4f}]".format(self.w, self.x, self.y, self.z)
	
	def __add__(self,quaternion):
		'''四元数加法'''
		result=self.copy()
		result.w += quaternion.w
		result.x += quaternion.x
		result.y += quaternion.y
		result.z += quaternion.z
		return result
	
	def __sub__(self, quaternion):
		'''四元数减法'''
		result=self.copy()
		result.w -= quaternion.w
		result.x -= quaternion.x
		result.y -= quaternion.y
		result.z -= quaternion.z
		return result
	
	def __mul__(self, value):
		'''乘法'''
		if type(value) in [float, int, np.float_, np.int_]:
			# 四元数与标量相乘
			result = self.copy()
			result.w *= value
			result.x *= value
			result.y *= value
			result.z *= value
			return result
		elif type(value) == Quaternion:
			# 四元数之间的乘法
			return self.grabmann_product(value)
	
	def __rmul__(self, value):
		'''右乘'''
		return self.__mul__(value)
		
	def __truediv__(self, value):
		'''标量除法'''
		if type(value) in [float, int, np.float_, np.int_]:
			# 四元数与标量的除法
			result = self.copy()
			value_inv = 1.0 / value
			result.w *= value_inv
			result.x *= value_inv
			result.y *= value_inv
			result.z *= value_inv
			return result
		else:
			# 注: 不能直接除四元数
			return None
	
	def norm(self):
		'''获取四元数的模长/范数'''
		return np.sqrt(self.w**2 + self.x**2 + self.y**2+ self.z**2)
	
	def unit(self):
		'''单位四元数(四元数规范化)'''
		result = self.copy()
		q_norm = self.norm()
		return result / q_norm
	
	def is_unit(self):
		'''是否为单位四元数'''
		return self.unit() == 1.0
	
	def conjugate(self):
		'''四原数共轭'''
		result = self.copy()
		result.x *= -1
		result.y *= -1
		result.z *= -1
		return result
	
	def star(self):
		'''q^{*} 四元数共轭的别名'''
		return self.conjugate()
		
	def inverse(self):
		'''四元数求逆'''
		return self.conjugate() / (self.w**2 + self.x**2 + self.y**2+ self.z**2)
	
	
	def reverse(self):
		'''四元数取反
		注: 对于旋转四元数 -q与q代表同一个旋转
		'''
		wxyz_reverse = [-1*v for v in self.wxyz()]
		return Quaternion(*wxyz_reverse)
	
	def grabmann_product(self, quaternion):
		'''四元数 Grabmann积'''
		a, b, c, d = self.wxyz()
		e, f, g, h = quaternion.wxyz()
		# 四元数相乘矩阵(左乘)
		mat_left = np.float32([
			[a, -b, -c, -d],
			[b, a, -d, c],
			[c, d, a, -b],
			[d, -c, b, a]])
		q2 = np.float32(quaternion.wxyz()).reshape((-1, 1))
		result = np.dot(mat_left, q2).reshape(-1)
		return Quaternion(*result)
	
	def dot(self, quaternion):
		'''点乘'''
		a, b, c, d = self.wxyz()
		e, f, g, h = quaternion.wxyz()
		return a*e + b*f + c*g + d*h
	
	def rotation(self, value):
		'''四元数旋转公式
		空间向量通过四元数进行旋转
		@value: 空间向量 list / 纯四元数
		'''
		# 旋转四元数
		q = self.copy()
		# 纯四元数 (代表空间向量)
		v = Quaternion()
		if type(value) in [list, np.ndarray]:
			# 判断是否是列表或ndarray的格式
			value = np.float32(value).reshape(-1)
			v.from_xyz(*value)
		elif type(value) == Quaternion:
			# 直接赋值
			v = value
		# 四元数旋转公式
		result = q*v*q.inverse()
		return result
	
	def angle_diff(self, quaternion, is_short_path=True):
		'''四元数之间的角度差(超球面)
		@quaternion: 四元数B
		@is_short_path: 是否求解最短路径
		 - True: theta in [0, pi/2]
		 - False: theta in [0, pi]
		注: 3维刚体下对应的旋转角度为2*theta
		'''
		is_q_reverse = False
		# 将二者进行规范化
		q1_unit = self.unit()
		q2_unit = quaternion.unit()
		# 计算cos(theta)
		cos_theta = q1_unit.dot(q2_unit)
		# 因为双倍覆盖的原因 q跟-q在超球面相位差为pi
		# 但是本质上 q跟-q指代的是同一个旋转
		# 此时需要反转其中一个四元数
		if is_short_path and cos_theta < 0:
			# is_short_path为真，强制约定了cos_theta > 0
			cos_theta *= -1
			is_q_reverse = True # 反转其中一个四元数
			# q2_unit = -1.0 * q2_unit
			# cos_theta = q1_unit.dot(q2_unit)
		# Arccos函数值域为[0, pi]
		# 当cos_theta > 0时, theta的取值范围为 [0, pi/2]
		# print(f"cos_theta={cos_theta}")
		# 约束下cos_theta的取值范围
		cos_theta = min(max(-1.0, cos_theta), 1.0)
		theta = np.arccos(cos_theta)
		# 四元数角度差theta， 对应刚体空间中的角度2*theta
		return theta, is_q_reverse
	
	def q_diff(self, q2):
		'''四元数旋转变化量
		q_1(自身)通过旋转得到了q_2
		delta_q * q_1 = q_2
		因此： delta_q = q_2 * (q_1)^{-1}
		当q1,q2都是单位四元数时
		delta_q = q_2 * (q_1)^{*}
		'''
		# 转换为单位向量
		q1 = self.copy().unit()
		q2 = q2.unit()
		delta_q = q2 * q1.star()
		return delta_q
	
	def interpolation_lerp(self, q2, n_segment=10, is_short_path=True, t_list=None):
		'''线性插值 在当前四元数与
		@q2: 四元数B
		@n_segment: 插值段
		@t_list: 时间序列 t \in [0, 1], 
			如果不指定t_list则按照n_segment等比例生成t_list
		'''
		n_segment = int(n_segment)
		# 计算四元数在两个超球面上的夹角
		theta, is_q_reverse = self.angle_diff(q2, is_short_path=is_short_path)
		if is_q_reverse:
			# 将q2取反
			q2 = q2.reverse()
		# 线性插值
		q_list = []
		q1 = self.copy()
		if t_list is None:
			t_list = [i_segment / n_segment  for i_segment in range(n_segment+1)]
		for t in t_list:
			qt = (1-t)*q1 + t*q2
			q_list.append(qt)
		return q_list, q2
	
	def interpolation_nlerp(self, q2, n_segment=10, is_short_path=True, t_list=None):
		'''正规划化线性插值 在当前四元数与
		@q2: 四元数B
		@n_segment: 插值段
		@t_list: 时间序列 t \in [0, 1], 
			如果不指定t_list则按照n_segment等比例生成t_list
		'''
		# 线性插值
		q_list, q2 = self.interpolation_lerp(q2, n_segment, \
			is_short_path=is_short_path, t_list=t_list)
		# 规范化
		return [q.unit() for q in q_list], q2
	
	def interpolation_slerp(self, q2, n_segment=10, is_short_path=True, t_list=None):
		'''球面线性插值
		@q2: 四元数B
		@n_segment: 插值段
		@t_list: 时间序列 t \in [0, 1], 
			如果不指定t_list则按照n_segment等比例生成t_list
		'''
		# 归一化
		q1 = self.unit()
		q2 = q2.unit()
		# print(f"q2_unit={q2}")
		# 检查夹角是否过小，如非常小则改用线性插值替换
		if q1.dot(q2) >= 0.9995:
			return self.interpolation_nlerp(q2, n_segment, \
				is_short_path=n_segment, t_list=t_list)
		# 计算四元数在两个超球面上的夹角
		theta, is_q_reverse = q1.angle_diff(q2, is_short_path=is_short_path)
		if is_q_reverse:
			# 将q2取反
			q2 = q2.reverse()
			# print(f"q2 reverse={q2}")
		# 插值
		q_list = []
		if t_list is None:
			# 生成等距的t_list
			t_list = [i_segment / n_segment  for i_segment in range(n_segment+1)]
		
		sin_theta_inv = 1.0 / sin(theta)
		# print(t_list)
		for t in t_list:
			# Slerp插值
			qt = sin_theta_inv * ((sin((1-t)*theta))*q1 + (sin(t*theta))*q2)
			# 规范化
			qt = qt.unit()
			# 追加到列表
			q_list.append(qt)
		return q_list, q2
	
	def from_wxyz(self, w, x, y, z):
		'''从wxyz的格式构造四元数'''
		self.w = w
		self.x = x
		self.y = y
		self.z = z
	
	def from_xyzw(self, x, y, z, w):
		'''从wxyz的格式构造四元数'''
		self.w = w
		self.x = x
		self.y = y
		self.z = z
  
	def from_xyz(self, x, y, z):
		'''从3D向量构造纯四元数'''
		self.w = 0
		self.x = x
		self.y = y
		self.z = z
	
	def from_euler(self, roll, pitch, yaw):
		'''从欧拉角构造四元数
		注: 欧垃角为rpy格式
		'''
		rmat = Transform.euler2rmat(roll, pitch, yaw)
		self.from_rmat(rmat)
		
	def from_rmat(self, rmat):
		'''从旋转矩阵构造四元数
		参考链接: https://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/
		'''
		rmat = np.float32(rmat)
		m11, m12, m13, m21, m22, m23, m31, m32, m33 = rmat.reshape(-1)
		# trace是矩阵的迹, 是矩阵主对角元素之和
		# trace(rmat) = m11 + m22 + m33
		trace_rmat = m11 + m22 + m33
		if  trace_rmat > 0:
			# 注: q0不能是0， 否则就变成了纯四元数了
			# 就不是旋转四元数了
			# S = 4q0
			s = np.sqrt(trace_rmat+1) * 2.0 # S = 4*qw
			inv_s = 1.0 / s
			qw = 0.25 * s
			qx = (m32 - m23) * inv_s
			qy = (m13 - m31) * inv_s
			qz = (m21 - m12) * inv_s
		elif m11 > m22 and m11 > m33:
			s = np.sqrt(1.0 + m11 - m22 - m33) * 2 # S = 4*qx
			inv_s = 1.0 / s
			qw = (m32 - m23) * inv_s
			qx = 0.25 * s
			qy = (m12 + m21) * inv_s
			qz = (m13 + m31) * inv_s
		elif m22 > m33:
			s = np.sqrt(1.0 - m11 + m22 - m33) * 2 # S = 4*qy
			inv_s = 1.0 / s
			qw = (m13 - m31) * inv_s
			qx = (m12 + m21) * inv_s
			qy = 0.25 * s
			qz = (m23 + m32) * inv_s
		else:
			s = np.sqrt(1.0 - m11 - m22 + m33) * 2 # S = 4*qz
			inv_s = 1.0 / s
			qw = (m21 - m12)
			qx = (m13 + m31)
			qy = (m23 + m32)
			qz = 0.25 * s
		self.from_wxyz(qw, qx, qy, qz)
		
	def from_rvect(self, u, theta=None):
		'''从旋转向量构造四元数
		@theta: 转轴
		@u: 转轴
		'''
		# 旋转轴
		u = np.float32(u).reshape(-1)
		# 如果没有指定norm则用转轴模长作为角度
		if theta is None:
			theta = np.linalg.norm(u)
		# 根据四元数的旋转公式
		# 实质是旋转两次， 因此单次旋转角度为
		# 刚体旋转角度的一半
		q_theta = theta / 2.0
		w = cos(q_theta)
		x, y, z = sin(q_theta) * u
		self.from_wxyz(w, x, y, z)
	
	def to_euler(self):
		'''转换为欧垃角
		注: 欧垃角为rpy格式
		'''
		# 旋转矩阵
		rmat = self.to_rmat()
		# 转换为欧拉角
		return Transform.rmat2euler(rmat)
	
	def to_rmat(self):
		'''转换为旋转矩阵'''
		q_unit = self.unit()
		q0, q1, q2, q3 = q_unit.wxyz()
		q1_pw2_2 = 2.0*q1*q1
		q2_pw2_2 = 2.0*q2*q2
		q3_pw2_2 = 2.0*q3*q3
		q0_q1_2 = 2.0*q0*q1
		q0_q2_2 = 2.0*q0*q2
		q0_q3_2 = 2.0*q0*q3
		q1_q2_2 = 2.0*q1*q2
		q2_q3_2 = 2.0*q2*q3
		q1_q3_2 = 2.0*q1*q3
		return np.float32([
			[1-q2_pw2_2-q3_pw2_2, q1_q2_2-q0_q3_2, q1_q3_2+q0_q2_2],
			[q1_q2_2+q0_q3_2, 1-q1_pw2_2-q3_pw2_2, q2_q3_2-q0_q1_2],
			[q1_q3_2-q0_q2_2, q2_q3_2+q0_q1_2, 1-q1_pw2_2-q2_pw2_2]
		])
	
	def to_rvect(self):
		'''转换为旋转向量'''
		# 四元数转换为单位四元数
		w, x, y, z = self.unit().wxyz()
		if w > 0.9995:
			return 0, [0, 0, 1]
		# 角度的1/2
		theta_d2 = arccos(w)
		theta = theta_d2 * 2
		sin_theta_d2 = sin(theta_d2)
		ux = x / sin_theta_d2
		uy = y / sin_theta_d2
		uz = z / sin_theta_d2
		return [ux, uy, uz], theta
