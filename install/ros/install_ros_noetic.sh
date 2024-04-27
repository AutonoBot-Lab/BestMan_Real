#!/bin/bash

# Add ROS repository to package sources
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Install curl if not already installed
sudo apt install curl

# Add ROS key
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Update package sources
sudo apt update

# Install ROS Noetic Desktop Full
sudo apt install ros-noetic-desktop-full

# Add ROS environment setup to .bashrc
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Source ROS setup
source /opt/ros/noetic/setup.bash

# Install ROS dependencies
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

# Others
sudo apt-get install --reinstall ros-noetic-genmsg ros-noetic-gencpp

# Initialize rosdep
sudo rosdep init

# Update rosdep
rosdep update
