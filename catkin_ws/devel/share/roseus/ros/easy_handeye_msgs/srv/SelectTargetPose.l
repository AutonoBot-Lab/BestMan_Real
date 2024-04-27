;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::SelectTargetPose)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'SelectTargetPose (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::SELECTTARGETPOSE")
  (make-package "EASY_HANDEYE_MSGS::SELECTTARGETPOSE"))
(unless (find-package "EASY_HANDEYE_MSGS::SELECTTARGETPOSEREQUEST")
  (make-package "EASY_HANDEYE_MSGS::SELECTTARGETPOSEREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::SELECTTARGETPOSERESPONSE")
  (make-package "EASY_HANDEYE_MSGS::SELECTTARGETPOSERESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::SelectTargetPoseRequest
  :super ros::object
  :slots (_target_pose_index ))

(defmethod easy_handeye_msgs::SelectTargetPoseRequest
  (:init
   (&key
    ((:target_pose_index __target_pose_index) 0)
    )
   (send-super :init)
   (setq _target_pose_index (round __target_pose_index))
   self)
  (:target_pose_index
   (&optional __target_pose_index)
   (if __target_pose_index (setq _target_pose_index __target_pose_index)) _target_pose_index)
  (:serialization-length
   ()
   (+
    ;; int64 _target_pose_index
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _target_pose_index
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _target_pose_index (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _target_pose_index) (= (length (_target_pose_index . bv)) 2)) ;; bignum
              (write-long (ash (elt (_target_pose_index . bv) 0) 0) s)
              (write-long (ash (elt (_target_pose_index . bv) 1) -1) s))
             ((and (class _target_pose_index) (= (length (_target_pose_index . bv)) 1)) ;; big1
              (write-long (elt (_target_pose_index . bv) 0) s)
              (write-long (if (>= _target_pose_index 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _target_pose_index s)(write-long (if (>= _target_pose_index 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _target_pose_index
#+(or :alpha :irix6 :x86_64)
      (setf _target_pose_index (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _target_pose_index (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass easy_handeye_msgs::SelectTargetPoseResponse
  :super ros::object
  :slots (_success _target_poses ))

(defmethod easy_handeye_msgs::SelectTargetPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:target_poses __target_poses) (instance easy_handeye_msgs::TargetPoseList :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _target_poses __target_poses)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
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
    ;; bool _success
    1
    ;; easy_handeye_msgs/TargetPoseList _target_poses
    (send _target_poses :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; easy_handeye_msgs/TargetPoseList _target_poses
       (send _target_poses :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; easy_handeye_msgs/TargetPoseList _target_poses
     (send _target_poses :deserialize buf ptr-) (incf ptr- (send _target_poses :serialization-length))
   ;;
   self)
  )

(defclass easy_handeye_msgs::SelectTargetPose
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::SelectTargetPose :md5sum-) "7b5a90234960b4a47b29711a1572dab1")
(setf (get easy_handeye_msgs::SelectTargetPose :datatype-) "easy_handeye_msgs/SelectTargetPose")
(setf (get easy_handeye_msgs::SelectTargetPose :request) easy_handeye_msgs::SelectTargetPoseRequest)
(setf (get easy_handeye_msgs::SelectTargetPose :response) easy_handeye_msgs::SelectTargetPoseResponse)

(defmethod easy_handeye_msgs::SelectTargetPoseRequest
  (:response () (instance easy_handeye_msgs::SelectTargetPoseResponse :init)))

(setf (get easy_handeye_msgs::SelectTargetPoseRequest :md5sum-) "7b5a90234960b4a47b29711a1572dab1")
(setf (get easy_handeye_msgs::SelectTargetPoseRequest :datatype-) "easy_handeye_msgs/SelectTargetPoseRequest")
(setf (get easy_handeye_msgs::SelectTargetPoseRequest :definition-)
      "int64 target_pose_index
---
bool success
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

(setf (get easy_handeye_msgs::SelectTargetPoseResponse :md5sum-) "7b5a90234960b4a47b29711a1572dab1")
(setf (get easy_handeye_msgs::SelectTargetPoseResponse :datatype-) "easy_handeye_msgs/SelectTargetPoseResponse")
(setf (get easy_handeye_msgs::SelectTargetPoseResponse :definition-)
      "int64 target_pose_index
---
bool success
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



(provide :easy_handeye_msgs/SelectTargetPose "7b5a90234960b4a47b29711a1572dab1")


