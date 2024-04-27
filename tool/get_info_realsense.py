import pyrealsense2 as rs

# 创建管道
pipeline = rs.pipeline()

# 创建一个配置对象，并配置请求的分辨率
config = rs.config()
config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)
config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)

# 开始流
pipeline.start(config)

try:
    # 等待一帧
    frames = pipeline.wait_for_frames()
    depth_frame = frames.get_depth_frame()
    color_frame = frames.get_color_frame()

    if not depth_frame or not color_frame:
        print("Frames did not arrive!")
        exit(0)

    # 输出分辨率
    print("Depth frame width:", depth_frame.get_width())
    print("Depth frame height:", depth_frame.get_height())
    print("Color frame width:", color_frame.get_width())
    print("Color frame height:", color_frame.get_height())
finally:
    # 停止流
    pipeline.stop()
