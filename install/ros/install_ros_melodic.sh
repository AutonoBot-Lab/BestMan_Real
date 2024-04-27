#!/bin/bash

# Add ROS repository to apt sources
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Install curl if not already installed
sudo apt install curl

# Add ROS key
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Update apt
sudo apt update

# Install ROS Melodic Desktop Full
sudo apt install ros-melodic-desktop-full

# Add ROS environment setup to bashrc
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Source ROS setup
source /opt/ros/melodic/setup.bash

# Install ROS dependencies
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

# Initialize rosdep
sudo rosdep init

# Update rosdep
rosdep update
