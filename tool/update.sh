#!/bin/bash

# 进入工作目录
cd $HOME/BestMan_Real/catkin_ws

# 更新rosdep数据库
rosdep update

# 安装所有依赖
rosdep install --from-paths src --ignore-src -r -y

# 构建项目
catkin_make