;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::TargetPoseList)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'TargetPoseList (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::TARGETPOSELIST")
  (make-package "EASY_HANDEYE_MSGS::TARGETPOSELIST"))

(in-package "ROS")
;;//! \htmlinclude TargetPoseList.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass easy_handeye_msgs::TargetPoseList
  :super ros::object
  :slots (_home_pose _target_poses _current_target_pose_index ))

(defmethod easy_handeye_msgs::TargetPoseList
  (:init
   (&key
    ((:home_pose __home_pose) (instance geometry_msgs::PoseStamped :init))
    ((:target_poses __target_poses) ())
    ((:current_target_pose_index __current_target_pose_index) 0)
    )
   (send-super :init)
   (setq _home_pose __home_pose)
   (setq _target_poses __target_poses)
   (setq _current_target_pose_index (round __current_target_pose_index))
   self)
  (:home_pose
   (&rest __home_pose)
   (if (keywordp (car __home_pose))
       (send* _home_pose __home_pose)
     (progn
       (if __home_pose (setq _home_pose (car __home_pose)))
       _home_pose)))
  (:target_poses
   (&rest __target_poses)
   (if (keywordp (car __target_poses))
       (send* _target_poses __target_poses)
     (progn
       (if __target_poses (setq _target_poses (car __target_poses)))
       _target_poses)))
  (:current_target_pose_index
   (&optional __current_target_pose_index)
   (if __current_target_pose_index (setq _current_target_pose_index __current_target_pose_index)) _current_target_pose_index)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _home_pose
    (send _home_pose :serialization-length)
    ;; geometry_msgs/PoseStamped[] _target_poses
    (apply #'+ (send-all _target_poses :serialization-length)) 4
    ;; int64 _current_target_pose_index
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _home_pose
       (send _home_pose :serialize s)
     ;; geometry_msgs/PoseStamped[] _target_poses
     (write-long (length _target_poses) s)
     (dolist (elem _target_poses)
       (send elem :serialize s)
       )
     ;; int64 _current_target_pose_index
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _current_target_pose_index (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _current_target_pose_index) (= (length (_current_target_pose_index . bv)) 2)) ;; bignum
              (write-long (ash (elt (_current_target_pose_index . bv) 0) 0) s)
              (write-long (ash (elt (_current_target_pose_index . bv) 1) -1) s))
             ((and (class _current_target_pose_index) (= (length (_current_target_pose_index . bv)) 1)) ;; big1
              (write-long (elt (_current_target_pose_index . bv) 0) s)
              (write-long (if (>= _current_target_pose_index 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _current_target_pose_index s)(write-long (if (>= _current_target_pose_index 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _home_pose
     (send _home_pose :deserialize buf ptr-) (incf ptr- (send _home_pose :serialization-length))
   ;; geometry_msgs/PoseStamped[] _target_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _target_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int64 _current_target_pose_index
#+(or :alpha :irix6 :x86_64)
      (setf _current_target_pose_index (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _current_target_pose_index (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get easy_handeye_msgs::TargetPoseList :md5sum-) "6c343b905aff6f17d2d7f55ae6eecc3c")
(setf (get easy_handeye_msgs::TargetPoseList :datatype-) "easy_handeye_msgs/TargetPoseList")
(setf (get easy_handeye_msgs::TargetPoseList :definition-)
      "geometry_msgs/PoseStamped home_pose
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



(provide :easy_handeye_msgs/TargetPoseList "6c343b905aff6f17d2d7f55ae6eecc3c")


