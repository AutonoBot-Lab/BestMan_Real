;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::ComputeCalibration)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'ComputeCalibration (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::COMPUTECALIBRATION")
  (make-package "EASY_HANDEYE_MSGS::COMPUTECALIBRATION"))
(unless (find-package "EASY_HANDEYE_MSGS::COMPUTECALIBRATIONREQUEST")
  (make-package "EASY_HANDEYE_MSGS::COMPUTECALIBRATIONREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::COMPUTECALIBRATIONRESPONSE")
  (make-package "EASY_HANDEYE_MSGS::COMPUTECALIBRATIONRESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::ComputeCalibrationRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::ComputeCalibrationRequest
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

(defclass easy_handeye_msgs::ComputeCalibrationResponse
  :super ros::object
  :slots (_valid _calibration ))

(defmethod easy_handeye_msgs::ComputeCalibrationResponse
  (:init
   (&key
    ((:valid __valid) nil)
    ((:calibration __calibration) (instance easy_handeye_msgs::HandeyeCalibration :init))
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _calibration __calibration)
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:calibration
   (&rest __calibration)
   (if (keywordp (car __calibration))
       (send* _calibration __calibration)
     (progn
       (if __calibration (setq _calibration (car __calibration)))
       _calibration)))
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; easy_handeye_msgs/HandeyeCalibration _calibration
    (send _calibration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; easy_handeye_msgs/HandeyeCalibration _calibration
       (send _calibration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; easy_handeye_msgs/HandeyeCalibration _calibration
     (send _calibration :deserialize buf ptr-) (incf ptr- (send _calibration :serialization-length))
   ;;
   self)
  )

(defclass easy_handeye_msgs::ComputeCalibration
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::ComputeCalibration :md5sum-) "6afc2cd822d24a09561ea7009e409ca0")
(setf (get easy_handeye_msgs::ComputeCalibration :datatype-) "easy_handeye_msgs/ComputeCalibration")
(setf (get easy_handeye_msgs::ComputeCalibration :request) easy_handeye_msgs::ComputeCalibrationRequest)
(setf (get easy_handeye_msgs::ComputeCalibration :response) easy_handeye_msgs::ComputeCalibrationResponse)

(defmethod easy_handeye_msgs::ComputeCalibrationRequest
  (:response () (instance easy_handeye_msgs::ComputeCalibrationResponse :init)))

(setf (get easy_handeye_msgs::ComputeCalibrationRequest :md5sum-) "6afc2cd822d24a09561ea7009e409ca0")
(setf (get easy_handeye_msgs::ComputeCalibrationRequest :datatype-) "easy_handeye_msgs/ComputeCalibrationRequest")
(setf (get easy_handeye_msgs::ComputeCalibrationRequest :definition-)
      "---
bool valid
HandeyeCalibration calibration

================================================================================
MSG: easy_handeye_msgs/HandeyeCalibration
bool eye_on_hand
geometry_msgs/TransformStamped transform
================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

(setf (get easy_handeye_msgs::ComputeCalibrationResponse :md5sum-) "6afc2cd822d24a09561ea7009e409ca0")
(setf (get easy_handeye_msgs::ComputeCalibrationResponse :datatype-) "easy_handeye_msgs/ComputeCalibrationResponse")
(setf (get easy_handeye_msgs::ComputeCalibrationResponse :definition-)
      "---
bool valid
HandeyeCalibration calibration

================================================================================
MSG: easy_handeye_msgs/HandeyeCalibration
bool eye_on_hand
geometry_msgs/TransformStamped transform
================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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



(provide :easy_handeye_msgs/ComputeCalibration "6afc2cd822d24a09561ea7009e409ca0")


