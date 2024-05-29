# -----------------------------------------
# This code is to control UR5e using the Python MoveIt user interfaces
# -----------------------------------------

#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
from geometry_msgs.msg import PoseStamped
import csv
import math


fileout = csv.writer(open('object_pose.csv', 'a'))


def callback(data):
    roll_x, pitch_y, yaw_z = euler_from_quaternion(data.pose.orientation.x, data.pose.orientation.y, data.pose.orientation.z, data.pose.orientation.w)
    fileout.writerow([data.header.seq, data.header.stamp, data.header.frame_id,
                data.pose.position.x, data.pose.position.y, data.pose.position.z,
                roll_x, pitch_y, yaw_z])


def track_marker():
    rospy.init_node('ur_detect_test_node', anonymous=True)
    rospy.Subscriber('/aruco_tracker/pose', PoseStamped, callback)
    rospy.spin()


# source: https://automaticaddison.com/how-to-convert-a-quaternion-into-euler-angles-in-python/
def euler_from_quaternion(x, y, z, w):
        """
        Convert a quaternion into euler angles (roll, pitch, yaw)
        roll is rotation around x in radians (counterclockwise)
        pitch is rotation around y in radians (counterclockwise)
        yaw is rotation around z in radians (counterclockwise)
        """
        t0 = +2.0 * (w * x + y * z)
        t1 = +1.0 - 2.0 * (x * x + y * y)
        roll_x = math.atan2(t0, t1)
     
        t2 = +2.0 * (w * y - z * x)
        t2 = +1.0 if t2 > +1.0 else t2
        t2 = -1.0 if t2 < -1.0 else t2
        pitch_y = math.asin(t2)
     
        t3 = +2.0 * (w * z + x * y)
        t4 = +1.0 - 2.0 * (y * y + z * z)
        yaw_z = math.atan2(t3, t4)
     
        return roll_x, pitch_y, yaw_z # in radians


if __name__ == '__main__':
    print('Recording object pose')
    fileout.writerow(['seq', 'time_stamp', 'frame_id', 'pos_x', 'pos_y', 'pos_z', 'roll_x', 'pitch_y', 'yaw_z'])
    track_marker()