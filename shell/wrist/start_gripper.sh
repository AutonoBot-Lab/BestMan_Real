sudo usermod -a -G dialout $USER 
sudo chmod 777  /dev/ttyACM0
rosrun robotiq_2f_gripper_control Robotiq2FGripperRtuNode.py /dev/ttyACM0