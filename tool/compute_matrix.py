import numpy as np
from scipy.spatial.transform import Rotation as R

# 给定的数据
x, y, z = -0.082739, 0.0675962, 0.0301742
quaternion = [0.7010506679007502, -0.30878729596850824, 0.6258917294162943, -0.1464169045317123]

# 创建四元数，并转换为旋转矩阵
rotation = R.from_quat([quaternion[1], quaternion[2], quaternion[3], quaternion[0]])  # 注意四元数顺序
rotation_matrix = rotation.as_matrix()

# 创建位移向量
translation_vector = np.array([[x], [y], [z]])

# 构建齐次变换矩阵
transformation_matrix = np.eye(4)
transformation_matrix[:3, :3] = rotation_matrix
transformation_matrix[:3, 3] = translation_vector.flatten()

print("齐次变换矩阵 T: \n", transformation_matrix)
