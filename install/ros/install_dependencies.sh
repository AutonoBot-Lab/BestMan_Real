#!/bin/bash

# Update package sources
sudo apt-get update -qq

# Install MoveIt and various ROS controllers and messages
sudo apt-get install -y ros-noetic-moveit ros-noetic-ros-control ros-noetic-ros-controllers ros-noetic-industrial-msgs ros-noetic-soem

# Install additional ROS packages
sudo apt-get install -y ros-noetic-map-server ros-noetic-joy ros-noetic-costmap-2d ros-noetic-move-base-msgs ros-noetic-sound-play ros-noetic-serial ros-noetic-socketcan-interface ros-noetic-base-local-planner ros-noetic-scaled-joint-trajectory-controller ros-noetic-speed-scaling-interface ros-noetic-speed-scaling-state-controller ros-noetic-ur-msgs ros-noetic-pass-through-controllers ros-noetic-ur-client-library

sudo apt install ros-noetic-ddynamic-reconfigure

# Other
sudo apt-get install ros-noetic-rqt-image-view
sudo apt-get install python3-empy
sudo apt install python3.8-venv
pip install empy
pip install catkin_pkg
sudo apt install -y libboost-dev libeigen3-dev
sudo ln -s /usr/include/eigen3/Eigen /usr/local/include/Eigen
sudo ln -s /usr/include/eigen3/unsupported /usr/local/include/unsupported

# install pybind11
git clone https://github.com/pybind/pybind11.git
cd pybind11
mkdir build && cd build
cmake .. -DPYBIND11_TEST=OFF
make -j$(nproc)
sudo make install
cd ../..