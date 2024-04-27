;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::EnumerateTargetPoses)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'EnumerateTargetPoses (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::ENUMERATETARGETPOSES")
  (make-package "EASY_HANDEYE_MSGS::ENUMERATETARGETPOSES"))
(unless (find-package "EASY_HANDEYE_MSGS::ENUMERATETARGETPOSESREQUEST")
  (make-package "EASY_HANDEYE_MSGS::ENUMERATETARGETPOSESREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::ENUMERATETARGETPOSESRESPONSE")
  (make-package "EASY_HANDEYE_MSGS::ENUMERATETARGETPOSESRESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::EnumerateTargetPosesRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::EnumerateTargetPosesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass easy_handeye_msgs::EnumerateTargetPosesResponse
  :super ros::object
  :slots (_target_poses ))

(defmethod easy_handeye_msgs::EnumerateTargetPosesResponse
  (:init
   (&key
    ((:target_poses __target_poses) (instance easy_handeye_msgs::TargetPoseList :init))
    )
   (send-super :init)
   (setq _target_poses __target_poses)
   self)
  (:target_poses
   (&rest __target_poses)
   (if (keywordp (car __target_poses))
       (send* _target_poses __target_poses)
     (progn
       (if __target_poses (setq _target_poses (car __target_poses)))
       _target_poses)))
  (:serialization-length
   ()
   (+
    ;; easy_handeye_msgs/TargetPoseList _target_poses
    (send _target_poses :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; easy_handeye_msgs/TargetPoseList _target_poses
       (send _target_poses :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; easy_handeye_msgs/TargetPoseList _target_poses
     (send _target_poses :deserialize buf ptr-) (incf ptr- (send _target_poses :serialization-length))
   ;;
   self)
  )

(defclass easy_handeye_msgs::EnumerateTargetPoses
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::EnumerateTargetPoses :md5sum-) "80d5a3ee3a473035f3acfbf477197597")
(setf (get easy_handeye_msgs::EnumerateTargetPoses :datatype-) "easy_handeye_msgs/EnumerateTargetPoses")
(setf (get easy_handeye_msgs::EnumerateTargetPoses :request) easy_handeye_msgs::EnumerateTargetPosesRequest)
(setf (get easy_handeye_msgs::EnumerateTargetPoses :response) easy_handeye_msgs::EnumerateTargetPosesResponse)

(defmethod easy_handeye_msgs::EnumerateTargetPosesRequest
  (:response () (instance easy_handeye_msgs::EnumerateTargetPosesResponse :init)))

(setf (get easy_handeye_msgs::EnumerateTargetPosesRequest :md5sum-) "80d5a3ee3a473035f3acfbf477197597")
(setf (get easy_handeye_msgs::EnumerateTargetPosesRequest :datatype-) "easy_handeye_msgs/EnumerateTargetPosesRequest")
(setf (get easy_handeye_msgs::EnumerateTargetPosesRequest :definition-)
      "---
easy_handeye_msgs/TargetPoseList target_poses

================================================================================
MSG: easy_handeye_msgs/TargetPoseList
geometry_msgs/PoseStamped home_pose
geometry_msgs/PoseStamped[] target_poses
int64 current_target_pose_index
# TODO: add joint poses (which are what will actually be used)
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get easy_handeye_msgs::EnumerateTargetPosesResponse :md5sum-) "80d5a3ee3a473035f3acfbf477197597")
(setf (get easy_handeye_msgs::EnumerateTargetPosesResponse :datatype-) "easy_handeye_msgs/EnumerateTargetPosesResponse")
(setf (get easy_handeye_msgs::EnumerateTargetPosesResponse :definition-)
      "---
easy_handeye_msgs/TargetPoseList target_poses

================================================================================
MSG: easy_handeye_msgs/TargetPoseList
geometry_msgs/PoseStamped home_pose
geometry_msgs/PoseStamped[] target_poses
int64 current_target_pose_index
# TODO: add joint poses (which are what will actually be used)
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :easy_handeye_msgs/EnumerateTargetPoses "80d5a3ee3a473035f3acfbf477197597")


