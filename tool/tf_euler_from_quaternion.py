#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PoseStamped
import tf

def callback(data):
    position = data.pose.position
    quaternion = (
        data.pose.orientation.x,
        data.pose.orientation.y,
        data.pose.orientation.z,
        data.pose.orientation.w
    )
    euler = tf.transformations.euler_from_quaternion(quaternion)

    rospy.loginfo("X,Y,Z,RX,RY,RZ: %f, %f, %f, %f, %f, %f" % (
        position.x, position.y, position.z, euler[0], euler[1], euler[2]))

def listener():
    rospy.init_node('pose_to_xyz_rpy', anonymous=True)
    rospy.Subscriber("/aruco_single/pose", PoseStamped, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()