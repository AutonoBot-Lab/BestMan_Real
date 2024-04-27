#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Update the package lists
sudo apt-get update

# Upgrade all installed packages to their latest versions
sudo apt-get upgrade -y

# Clone the easy_handeye repository into the specified directory
cd $HOME/BestMan_Real/catkin_ws/src
git clone https://gitee.com/ohhuo/handeye-calib.git

# Install dependencies using rosdep
cd $HOME/BestMan_Real/catkin_ws/src/handeye-calib

# Build the workspace
catkin_make

sudo apt-get install ros-noetic-aruco*

echo "Installation complete."
