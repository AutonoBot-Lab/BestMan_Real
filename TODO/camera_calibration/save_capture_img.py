'''
摄像头读取图像并展示
----------------------------------------------
@作者: 阿凯爱玩机器人
@QQ: 244561792
@微信: xingshunkai
@邮箱: xingshunkai@qq.com
@B站: https://space.bilibili.com/40344504
'''
import numpy as np # 引入numpy 用于矩阵运算
import cv2 # 引入opencv库函数

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
    # 更新窗口“image_win”中的图片
    cv2.imshow('image_win',frame)
    # 等待按键事件发生 等待1ms
    key = cv2.waitKey(1)
    if key == ord('q'):
        # 如果按键为q 代表quit 退出程序
        print("程序正常退出")
        break
    elif key == ord('s'):
        # 设置图像保存路径
        img_save_path = 'data/{}.png'.format(count)
        # 保存图像
        cv2.imwrite(img_save_path, frame)
        # 打印日志
        print("图像保存 ： {}".format(img_save_path))
        count += 1
# 释放VideoCapture
cap.release()
# 销毁所有的窗口
cv2.destroyAllWindows()
