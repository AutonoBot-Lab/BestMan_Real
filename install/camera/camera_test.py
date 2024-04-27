import pyrealsense2 as rs
import numpy as np
import cv2

# 配置深度和彩色流
pipeline = rs.pipeline()
config = rs.config()
config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)
config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)

# 启动管道
pipeline.start(config)

try:
    while True:
        # 等待一对连续帧：深度和颜色
        frames = pipeline.wait_for_frames()
        depth_frame = frames.get_depth_frame()
        color_frame = frames.get_color_frame()
        if not depth_frame or not color_frame:
            continue

        # 将图像转换为 numpy 数组
        depth_image = np.asanyarray(depth_frame.get_data())
        color_image = np.asanyarray(color_frame.get_data())

        # 在屏幕上显示图像
        cv2.imshow('RealSense Color Image', color_image)
        cv2.imshow('RealSense Depth Image', depth_image)
        key = cv2.waitKey(1)
        if key & 0xFF == ord('q') or key == 27:
            cv2.destroyAllWindows()
            break
finally:
    # 停止管道
    pipeline.stop()