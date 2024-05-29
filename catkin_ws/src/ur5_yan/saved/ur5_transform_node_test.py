
# -----------------------------------------
# This code is to control UR5e umath.sing the Python MoveIt user interfaces
# -----------------------------------------

#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import rospy
import tf
import geometry_msgs.msg

if __name__ == '__main__':
  rospy.init_node('turtle_tf_listener')
  listener = tf.TransformListener()
  rate = rospy.Rate(10.0)
  while not rospy.is_shutdown():
    try:
        (position, oritention) = listener.lookupTransform('/base', '/camera_marker', rospy.Time(0))
        print('position:{}'.format(position))
        print('oritention:{}'.format(oritention))
        print('-'*30)
    except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
        continue
