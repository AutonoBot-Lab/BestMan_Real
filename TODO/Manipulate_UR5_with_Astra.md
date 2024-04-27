
# Start the arm, and gripper
Open a new terminal, and input
```
cd shell/astra/
```
```
./start_arm_astra.sh
```
```
./start_gripper.sh
```
```
./start_ggcnn.sh
```
# Move the arm
The avoided pose
```
./arm_avioded.sh
```
The observed pose
```
./arm_observed.sh
```
# Grasp or Ungrasp the gripper
```
./gripper_grasped.sh
```
or
```
./gripper_ungrasped.sh
```
# Grasp object one time
```
rqt
```
```
./task_grasp_astra.sh
```
