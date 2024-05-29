# -----------------------------------------
# This code is to control UR5e using the Python MoveIt user interfaces
# -----------------------------------------

#!/usr/bin/env python
# -*- coding: UTF-8 -*-

from __future__ import print_function
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi


class MoveGroupInteface(object):
	# -----------------------------------------
	# setup the moveit
	# -----------------------------------------
	def __init__(self):
		super(MoveGroupInteface, self).__init__()
		# -----------------------------------------
		# initialize moveit_commander and rospy
		# -----------------------------------------
		moveit_commander.roscpp_initialize(sys.argv)
		rospy.init_node('ur_move_node', anonymous=True)

		# -----------------------------------------		
		# instantiate RobotCommander
		# -----------------------------------------
		self.robot = moveit_commander.RobotCommander()

		# -----------------------------------------		
		# instantiate PlanningSceneInterface
		# -----------------------------------------
		self.scene = moveit_commander.PlanningSceneInterface()  # Not used in this code
		
		# -----------------------------------------		
		# instantiate MoveGroupCommander
		# -----------------------------------------
		group_name = 'manipulator'  # group_name can be find in ur5_moveit_config/config/ur5.srdf
		self.move_group_commander = moveit_commander.MoveGroupCommander(group_name)

		# -----------------------------------------
		# get and print basic information
		# -----------------------------------------
		self.planning_frame = self.move_group_commander.get_planning_frame()
		print('planning frame: {}'.format(self.planning_frame))
		
		self.eef_link = self.move_group_commander.get_end_effector_link()
		print('end effector link: {}'.format(self.eef_link))
		
		self.group_names = self.robot.get_group_names()
		print('available planning groups:{}'.format(self.robot.get_group_names()))
		
		print('robot state:{}'.format(self.robot.get_current_state()))


	def display_trajectory_rviz(self, plan):
		# -----------------------------------------				
		# visualize the trajectory 
		# -----------------------------------------
		
		# create a publisher
		display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=20)

		# record trajectory
		display_trajectory = moveit_msgs.msg.DisplayTrajectory()
		display_trajectory.trajectory_start = self.robot.get_current_state()
		display_trajectory.trajectory.append(plan)

		# publish trajectory
		display_trajectory_publisher.publish(display_trajectory)
		

	def plan_joint_goal(self, joint1, joint2, joint3, joint4, joint5, joint6):
		# ------------------------------
		# set joint goal
		# ------------------------------
		joint_goal = group.get_current_joint_values()
		joint_goal[0] = joint1
		joint_goal[1] = joint2
		joint_goal[2] = joint3
		joint_goal[3] = joint4
		joint_goal[4] = joint5
		joint_goal[5] = joint6
		joint_goal[6] = joint7
		'''
		The go command can be called with joint values, poses, or without any
		parameters if you have already set the pose or joint target for the group
		'''
		group.go(joint_goal, wait=True)

		# ------------------------------
		# stop and ensure that there is no residual movement
		# ------------------------------
		group.stop()
	

	def plan_pose_goal(self, pose_x, pose_y, pose_z, pose_w):
		# ------------------------------
		# set pose goal
		# ------------------------------
		pose_goal = geometry_msgs.msg.Pose()

		pose_goal.orientation.w = pose_w
		pose_goal.position.x = pose_x
		pose_goal.position.y = pose_y
		pose_goal.position.z = pose_z

		# ------------------------------
		# plan to achieve pose goal
		# ------------------------------
		group.set_pose_target(pose_goal)
		plan = group.go(wait=True)

		# ------------------------------
		# stop and ensure that there is no residual movement
		# ------------------------------
		group.stop()

		'''
		It is always good to clear your targets after planning with poses.
		Note: there is no equivalent function for clear_joint_value_targets()
		'''
		group.clear_pose_targets()


	def plan_cartesian_path(self, scale=1):
		waypoints = []
		# ------------------------------
		# generate a goal pose
		# ------------------------------
		wpose = self.move_group_commander.get_current_pose().pose
		print('-'*30)
		print('current pose:{}'.format(wpose))
		print('-'*30)
		
		wpose.position.z -= scale * 0.1  # First move up (z)
		waypoints.append(copy.deepcopy(wpose))
		wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
		waypoints.append(copy.deepcopy(wpose))
		wpose.position.y += scale * 0.1  # Third move sideways (y)
		waypoints.append(copy.deepcopy(wpose))

		'''
		We want the Cartesian path to be interpolated at a resolution of 1 cm
		which is why we will specify 0.01 as the eef_step in Cartesian
		translation.  We will disable the jump threshold by setting it to 0.0,
		ignoring the check for infeasible jumps in joint space, which is sufficient
		for this tutorial.
		'''
		(plan, fraction) = self.move_group_commander.compute_cartesian_path(
										waypoints, # waypoints to follow
										0.01,      # eef_step
										0.0)       # jump_threshold

		# Note: We are just planning, not asking move_group to actually move the robot yet:
		print('planning is completed')
		return plan, fraction

	def execute_plan(self, plan):
		'''
		Use execute if you would like the robot to follow
		the plan that has already been computed:
		'''
		self.move_group_commander.execute(plan, wait=True)

# -----------------------------------------
# initialize
# -----------------------------------------
print('-'*30)
print('Control UR5e')
demo = MoveGroupInteface()

print('Enter: begin planning')
raw_input()
cartesian_plan, fraction = demo.plan_cartesian_path()

print('Enter: check plan using Rviz')
raw_input()
demo.display_trajectory_rviz(cartesian_plan)

print('Enter: execute the plan')
raw_input()
demo.execute_plan(cartesian_plan)

print('Enter: plan for reposition')
raw_input()
cartesian_plan, fraction = demo.plan_cartesian_path(scale=-1)

print('Enter: check plan using Rviz')
raw_input()
demo.display_trajectory_rviz(cartesian_plan)

print('Enter: execute the plan')
raw_input()
demo.execute_plan(cartesian_plan)
