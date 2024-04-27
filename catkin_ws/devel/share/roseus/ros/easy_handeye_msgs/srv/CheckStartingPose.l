;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::CheckStartingPose)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'CheckStartingPose (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::CHECKSTARTINGPOSE")
  (make-package "EASY_HANDEYE_MSGS::CHECKSTARTINGPOSE"))
(unless (find-package "EASY_HANDEYE_MSGS::CHECKSTARTINGPOSEREQUEST")
  (make-package "EASY_HANDEYE_MSGS::CHECKSTARTINGPOSEREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::CHECKSTARTINGPOSERESPONSE")
  (make-package "EASY_HANDEYE_MSGS::CHECKSTARTINGPOSERESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::CheckStartingPoseRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::CheckStartingPoseRequest
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

(defclass easy_handeye_msgs::CheckStartingPoseResponse
  :super ros::object
  :slots (_can_calibrate _target_poses ))

(defmethod easy_handeye_msgs::CheckStartingPoseResponse
  (:init
   (&key
    ((:can_calibrate __can_calibrate) nil)
    ((:target_poses __target_poses) (instance easy_handeye_msgs::TargetPoseList :init))
    )
   (send-super :init)
   (setq _can_calibrate __can_calibrate)
   (setq _target_poses __target_poses)
   self)
  (:can_calibrate
   (&optional (__can_calibrate :null))
   (if (not (eq __can_calibrate :null)) (setq _can_calibrate __can_calibrate)) _can_calibrate)
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
    ;; bool _can_calibrate
    1
    ;; easy_handeye_msgs/TargetPoseList _target_poses
    (send _target_poses :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _can_calibrate
       (if _can_calibrate (write-byte -1 s) (write-byte 0 s))
     ;; easy_handeye_msgs/TargetPoseList _target_poses
       (send _target_poses :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _can_calibrate
     (setq _can_calibrate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; easy_handeye_msgs/TargetPoseList _target_poses
     (send _target_poses :deserialize buf ptr-) (incf ptr- (send _target_poses :serialization-length))
   ;;
   self)
  )

(defclass easy_handeye_msgs::CheckStartingPose
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::CheckStartingPose :md5sum-) "2e21f20435619eabca85520d8feb5839")
(setf (get easy_handeye_msgs::CheckStartingPose :datatype-) "easy_handeye_msgs/CheckStartingPose")
(setf (get easy_handeye_msgs::CheckStartingPose :request) easy_handeye_msgs::CheckStartingPoseRequest)
(setf (get easy_handeye_msgs::CheckStartingPose :response) easy_handeye_msgs::CheckStartingPoseResponse)

(defmethod easy_handeye_msgs::CheckStartingPoseRequest
  (:response () (instance easy_handeye_msgs::CheckStartingPoseResponse :init)))

(setf (get easy_handeye_msgs::CheckStartingPoseRequest :md5sum-) "2e21f20435619eabca85520d8feb5839")
(setf (get easy_handeye_msgs::CheckStartingPoseRequest :datatype-) "easy_handeye_msgs/CheckStartingPoseRequest")
(setf (get easy_handeye_msgs::CheckStartingPoseRequest :definition-)
      "---
bool can_calibrate
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

(setf (get easy_handeye_msgs::CheckStartingPoseResponse :md5sum-) "2e21f20435619eabca85520d8feb5839")
(setf (get easy_handeye_msgs::CheckStartingPoseResponse :datatype-) "easy_handeye_msgs/CheckStartingPoseResponse")
(setf (get easy_handeye_msgs::CheckStartingPoseResponse :definition-)
      "---
bool can_calibrate
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



(provide :easy_handeye_msgs/CheckStartingPose "2e21f20435619eabca85520d8feb5839")


