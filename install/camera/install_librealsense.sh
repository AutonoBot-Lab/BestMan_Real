#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Add the GPG key for the Intel RealSense repository
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6B0FC61

# Add the Intel RealSense repository to the system
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u

# Update and install the necessary packages
sudo apt-get update
sudo apt-get install librealsense2-dkms
sudo apt-get install librealsense2-utils
sudo apt-get install librealsense2-dev
sudo apt-get install librealsense2-dbg
pip install pyrealsense2
pip install absl-py
python3.8 -m pip install opencv-python
pip install open3d
pip install openpyxl