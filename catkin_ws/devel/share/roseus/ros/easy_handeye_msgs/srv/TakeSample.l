;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::TakeSample)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'TakeSample (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::TAKESAMPLE")
  (make-package "EASY_HANDEYE_MSGS::TAKESAMPLE"))
(unless (find-package "EASY_HANDEYE_MSGS::TAKESAMPLEREQUEST")
  (make-package "EASY_HANDEYE_MSGS::TAKESAMPLEREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::TAKESAMPLERESPONSE")
  (make-package "EASY_HANDEYE_MSGS::TAKESAMPLERESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::TakeSampleRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::TakeSampleRequest
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

(defclass easy_handeye_msgs::TakeSampleResponse
  :super ros::object
  :slots (_samples ))

(defmethod easy_handeye_msgs::TakeSampleResponse
  (:init
   (&key
    ((:samples __samples) (instance easy_handeye_msgs::SampleList :init))
    )
   (send-super :init)
   (setq _samples __samples)
   self)
  (:samples
   (&rest __samples)
   (if (keywordp (car __samples))
       (send* _samples __samples)
     (progn
       (if __samples (setq _samples (car __samples)))
       _samples)))
  (:serialization-length
   ()
   (+
    ;; easy_handeye_msgs/SampleList _samples
    (send _samples :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; easy_handeye_msgs/SampleList _samples
       (send _samples :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; easy_handeye_msgs/SampleList _samples
     (send _samples :deserialize buf ptr-) (incf ptr- (send _samples :serialization-length))
   ;;
   self)
  )

(defclass easy_handeye_msgs::TakeSample
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::TakeSample :md5sum-) "7d95fb9676bbeca74481a1f545ed96b0")
(setf (get easy_handeye_msgs::TakeSample :datatype-) "easy_handeye_msgs/TakeSample")
(setf (get easy_handeye_msgs::TakeSample :request) easy_handeye_msgs::TakeSampleRequest)
(setf (get easy_handeye_msgs::TakeSample :response) easy_handeye_msgs::TakeSampleResponse)

(defmethod easy_handeye_msgs::TakeSampleRequest
  (:response () (instance easy_handeye_msgs::TakeSampleResponse :init)))

(setf (get easy_handeye_msgs::TakeSampleRequest :md5sum-) "7d95fb9676bbeca74481a1f545ed96b0")
(setf (get easy_handeye_msgs::TakeSampleRequest :datatype-) "easy_handeye_msgs/TakeSampleRequest")
(setf (get easy_handeye_msgs::TakeSampleRequest :definition-)
      "---
SampleList samples

================================================================================
MSG: easy_handeye_msgs/SampleList
geometry_msgs/Transform[] hand_world_samples
geometry_msgs/Transform[] camera_marker_samples
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

(setf (get easy_handeye_msgs::TakeSampleResponse :md5sum-) "7d95fb9676bbeca74481a1f545ed96b0")
(setf (get easy_handeye_msgs::TakeSampleResponse :datatype-) "easy_handeye_msgs/TakeSampleResponse")
(setf (get easy_handeye_msgs::TakeSampleResponse :definition-)
      "---
SampleList samples

================================================================================
MSG: easy_handeye_msgs/SampleList
geometry_msgs/Transform[] hand_world_samples
geometry_msgs/Transform[] camera_marker_samples
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



(provide :easy_handeye_msgs/TakeSample "7d95fb9676bbeca74481a1f545ed96b0")


