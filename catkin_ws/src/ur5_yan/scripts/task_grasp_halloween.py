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
from geometry_msgs.msg import PoseStamped
from math import pi
import tf
import roslib; roslib.load_manifest('robotiq_2f_gripper_control')
import actionlib
from control_msgs.msg import *
from trajectory_msgs.msg import *
from sensor_msgs.msg import JointState
from robotiq_2f_gripper_control.msg import _Robotiq2FGripper_robot_output  as outputMsg

from twisted.internet import reactor
from pymodbus.client.asynchronous import schedulers
from pymodbus.client.asynchronous.serial import AsyncModbusSerialClient
from pymodbus.client.asynchronous.twisted import ModbusClientProtocol

from utils import MoveGroupInteface

# -----------------------------------------
# initialize
# -----------------------------------------
print('Control UR5e')
print('-'*30)
demo = MoveGroupInteface()
print('-'*30)

# -----------------------------------------
# add virtual obstacles
# -----------------------------------------
obstacle_name = 'block_beam'
frame = 'base'
obstacle_size = [0.5, 0.05, 1.5]
obstsacle_position = [0.2, 0.2, 0.1]
demo.remove_fixed_obstacle(obstacle_name)
demo.add_fixed_obstacle(obstacle_name, frame, obstacle_size, obstsacle_position)
demo.update_state()
print('virtual obstacles have been added.')
print('-'*30)

for i in range(5):
	# -----------------------------------------
	# ungrasp
	# -----------------------------------------
	demo.ungrasp()
	print('ungrasp is done!')
	print('-'*30)

	# -----------------------------------------
	# get joint status (pose for observation candy) 
	# -----------------------------------------
	demo.plan_joint_goal(0.03317070007324219, -1.1081045430949708, 0.9977005163775843, -2.362108369866842, -1.525527302418844, 0.007197856903076172)
	rospy.sleep(2)
	print('pose for avoidance is done!')
	print('-'*30)

	# -----------------------------------------
	# get joint status (pose for grasping candy) 
	# -----------------------------------------
	demo.plan_joint_goal(0.0024476051330566406, -0.7479666036418458, 0.9859903494464319, -1.8592421017088832, -1.556570831929342, 0.007234096527099609)
	print('pose for grasping is done!')
	print('-'*30)

	# -----------------------------------------
	# get object position in real time
	# -----------------------------------------
	(x_init, y_init, z_init) = (0.807, 0.137, 0.09) 
	print('target object position: x_init={}, y_init={}, z_init={}'.format(x_init, y_init, z_init))
	print('-'*30)

	# -----------------------------------------
	# execute trajectories
	# -----------------------------------------
	print('execute computed trajectory')
	# raw_input()
	x, y, z = demo.point1_halloween(x_init, y_init, z_init)
	print('x1:{} y1:{} z1:{}'.format(x, y, z))
	cartesian_plan, fraction = demo.plan_cartesian_path(x, y, z)
	demo.execute_plan(cartesian_plan)
	print('-'*30)

	x, y, z = demo.point2_halloween(x, y, z)
	print('x2:{} y2:{} z2:{}'.format(x, y, z))
	cartesian_plan, fraction = demo.plan_cartesian_path(x, y, z)
	demo.execute_plan(cartesian_plan)
	print('-'*30)

	x, y, z = demo.point3_halloween(x, y, z)
	print('x3:{} y3:{} z3:{}'.format(x, y, z))
	cartesian_plan, fraction = demo.plan_cartesian_path(x, y, z)
	demo.execute_plan(cartesian_plan)
	print('-'*30)

	x, y, z = demo.point4_halloween(x, y, z)
	print('x4:{} y4:{} z4:{}'.format(x, y, z))
	cartesian_plan, fraction = demo.plan_cartesian_path(x, y, z)
	demo.execute_plan(cartesian_plan)
	print('-'*30)

	x, y, z = demo.point5_halloween(x, y, z)
	print('x5:{} y5:{} z5:{}'.format(x, y, z))
	cartesian_plan, fraction = demo.plan_cartesian_path(x, y, z)
	demo.execute_plan(cartesian_plan)
	print('-'*30)

	x, y, z = demo.point6_halloween(x_init, y_init, z_init)
	print('x6:{} y6:{} z6:{}'.format(x, y, z))
	cartesian_plan, fraction = demo.plan_cartesian_path(x, y, z)
	demo.execute_plan(cartesian_plan)
	print('-'*30)

	# -----------------------------------------
	# grasp
	# -----------------------------------------
	rospy.sleep(1)
	demo.grasp()
	print('grasp is done!')
	print('-'*30)
	rospy.sleep(2)

	# -----------------------------------------
	# get joint status (pose for observation candy) 
	# -----------------------------------------
	demo.plan_joint_goal(0.03317070007324219, -1.1081045430949708, 0.9977005163775843, -2.362108369866842, -1.525527302418844, 0.007197856903076172)
	rospy.sleep(0.5)
	print('pose for avoidance is done!')
	print('-'*30)

	# -----------------------------------------
	# get joint status (pose for unloading) 
	# -----------------------------------------
	demo.plan_joint_goal(1.4785981178283691, -0.8114822667888184, 0.45619470277895147, -1.554370717411377, -1.558957878743307, 0.007185935974121094)
	rospy.sleep(0.5)
	print('pose for unloading is done!')

	# -----------------------------------------
	# ungrasp
	# -----------------------------------------
	demo.ungrasp()
	print('ungrasp is done!')
	print('-'*30)