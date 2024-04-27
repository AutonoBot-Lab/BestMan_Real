import pandas as pd
import numpy as np

def convert_radians_to_degrees(radians):
    return radians * 180 / np.pi

def process_data(filename):
    # 使用正则表达式处理混合分隔符（逗号和空格）
    data = pd.read_csv(filename, header=None, delimiter=r"\s*,\s*|\s+", engine='python')
    
    processed_rows = []  # 使用列表收集所有行
    
    for index, row in data.iterrows():
        if row[0] == 'hand':
            # 转换角度并重排序
            roll, pitch, yaw = map(convert_radians_to_degrees, map(float, row[1:4]))
            new_row = [row[0], float(row[4]), float(row[5]), float(row[6]), roll, pitch, yaw]
        elif row[0] == 'eye':
            roll, pitch, yaw = map(convert_radians_to_degrees, map(float, row[4:7]))
            new_row = [row[0], float(row[1]), float(row[2]), float(row[3]), roll, pitch, yaw]
        
        processed_rows.append(new_row)
    
    # 使用concat创建新的DataFrame
    processed_data = pd.DataFrame(processed_rows, columns=['Type', 'X', 'Y', 'Z', 'Roll', 'Pitch', 'Yaw'])
    processed_data.to_csv('/home/yan/BestMan_Real/catkin_ws/src/handeye-calib/src/handeye-calib/config/processed_base_hand_on_eye_data.csv.csv', index=False, header=False)

# 调用函数，传入文件名
process_data('/home/yan/BestMan_Real/catkin_ws/src/handeye-calib/src/handeye-calib/config/raw_base_hand_on_eye_data.csv')
