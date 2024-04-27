#!/bin/bash

# Step 1: Remove all ROS Noetic packages
echo "Removing all installed ROS Noetic packages..."
sudo apt remove --purge ros-noetic-* -y

# Step 2: Remove unused packages
echo "Removing unused packages..."
sudo apt autoremove -y

# Step 3: Remove ROS sources list
echo "Removing ROS sources list..."
sudo rm /etc/apt/sources.list.d/ros-latest.list

echo "ROS Noetic has been completely removed from your system."
