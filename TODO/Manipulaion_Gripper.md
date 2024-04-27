
```
sudo usermod -a -G dialout $USER 
```
```
dmesg | grep tty 
sudo chmod 777  /dev/ttyACM0 
```
Note, if dmesg shows 'ttyACM0', but there no ttyACM0 file. Restart your PC.

Open a new terminal, and input
```
rosrun robotiq_2f_gripper_control Robotiq2FGripperRtuNode.py /dev/ttyACM0
```
Open a new terminal, and input
```
rosrun robotiq_2f_gripper_control Robotiq2FGripperSimpleController.py 
```
