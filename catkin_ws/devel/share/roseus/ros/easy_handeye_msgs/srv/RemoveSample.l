;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::RemoveSample)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'RemoveSample (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::REMOVESAMPLE")
  (make-package "EASY_HANDEYE_MSGS::REMOVESAMPLE"))
(unless (find-package "EASY_HANDEYE_MSGS::REMOVESAMPLEREQUEST")
  (make-package "EASY_HANDEYE_MSGS::REMOVESAMPLEREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::REMOVESAMPLERESPONSE")
  (make-package "EASY_HANDEYE_MSGS::REMOVESAMPLERESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::RemoveSampleRequest
  :super ros::object
  :slots (_sample_index ))

(defmethod easy_handeye_msgs::RemoveSampleRequest
  (:init
   (&key
    ((:sample_index __sample_index) 0)
    )
   (send-super :init)
   (setq _sample_index (round __sample_index))
   self)
  (:sample_index
   (&optional __sample_index)
   (if __sample_index (setq _sample_index __sample_index)) _sample_index)
  (:serialization-length
   ()
   (+
    ;; int8 _sample_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _sample_index
       (write-byte _sample_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _sample_index
     (setq _sample_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sample_index 127) (setq _sample_index (- _sample_index 256)))
   ;;
   self)
  )

(defclass easy_handeye_msgs::RemoveSampleResponse
  :super ros::object
  :slots (_samples ))

(defmethod easy_handeye_msgs::RemoveSampleResponse
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

(defclass easy_handeye_msgs::RemoveSample
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::RemoveSample :md5sum-) "c70c6764515bed995cb2d85181cfefb3")
(setf (get easy_handeye_msgs::RemoveSample :datatype-) "easy_handeye_msgs/RemoveSample")
(setf (get easy_handeye_msgs::RemoveSample :request) easy_handeye_msgs::RemoveSampleRequest)
(setf (get easy_handeye_msgs::RemoveSample :response) easy_handeye_msgs::RemoveSampleResponse)

(defmethod easy_handeye_msgs::RemoveSampleRequest
  (:response () (instance easy_handeye_msgs::RemoveSampleResponse :init)))

(setf (get easy_handeye_msgs::RemoveSampleRequest :md5sum-) "c70c6764515bed995cb2d85181cfefb3")
(setf (get easy_handeye_msgs::RemoveSampleRequest :datatype-) "easy_handeye_msgs/RemoveSampleRequest")
(setf (get easy_handeye_msgs::RemoveSampleRequest :definition-)
      "int8 sample_index
---
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

(setf (get easy_handeye_msgs::RemoveSampleResponse :md5sum-) "c70c6764515bed995cb2d85181cfefb3")
(setf (get easy_handeye_msgs::RemoveSampleResponse :datatype-) "easy_handeye_msgs/RemoveSampleResponse")
(setf (get easy_handeye_msgs::RemoveSampleResponse :definition-)
      "int8 sample_index
---
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



(provide :easy_handeye_msgs/RemoveSample "c70c6764515bed995cb2d85181cfefb3")


