
# Start the arm, and gripper
Open a new terminal, and input
```
cd shell/wrist/
```
```
./start_arm.sh
```
```
./start_gripper.sh
```
# Move the arm
The avoided pose
```
./arm_avoided.sh
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
./task_grasp.sh
```
# Grasp object repeatedly
```
./task_grasp_putdown.sh
```

# Get tool0 pose
```
./tool0_controller_pose_halloween.sh
```
