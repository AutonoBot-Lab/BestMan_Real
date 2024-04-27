;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::SampleList)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'SampleList (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::SAMPLELIST")
  (make-package "EASY_HANDEYE_MSGS::SAMPLELIST"))

(in-package "ROS")
;;//! \htmlinclude SampleList.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass easy_handeye_msgs::SampleList
  :super ros::object
  :slots (_hand_world_samples _camera_marker_samples ))

(defmethod easy_handeye_msgs::SampleList
  (:init
   (&key
    ((:hand_world_samples __hand_world_samples) ())
    ((:camera_marker_samples __camera_marker_samples) ())
    )
   (send-super :init)
   (setq _hand_world_samples __hand_world_samples)
   (setq _camera_marker_samples __camera_marker_samples)
   self)
  (:hand_world_samples
   (&rest __hand_world_samples)
   (if (keywordp (car __hand_world_samples))
       (send* _hand_world_samples __hand_world_samples)
     (progn
       (if __hand_world_samples (setq _hand_world_samples (car __hand_world_samples)))
       _hand_world_samples)))
  (:camera_marker_samples
   (&rest __camera_marker_samples)
   (if (keywordp (car __camera_marker_samples))
       (send* _camera_marker_samples __camera_marker_samples)
     (progn
       (if __camera_marker_samples (setq _camera_marker_samples (car __camera_marker_samples)))
       _camera_marker_samples)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform[] _hand_world_samples
    (apply #'+ (send-all _hand_world_samples :serialization-length)) 4
    ;; geometry_msgs/Transform[] _camera_marker_samples
    (apply #'+ (send-all _camera_marker_samples :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform[] _hand_world_samples
     (write-long (length _hand_world_samples) s)
     (dolist (elem _hand_world_samples)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Transform[] _camera_marker_samples
     (write-long (length _camera_marker_samples) s)
     (dolist (elem _camera_marker_samples)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform[] _hand_world_samples
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hand_world_samples (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _hand_world_samples)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Transform[] _camera_marker_samples
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_marker_samples (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _camera_marker_samples)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get easy_handeye_msgs::SampleList :md5sum-) "19e891d084c5a799fdfe97bd1dbbf9c5")
(setf (get easy_handeye_msgs::SampleList :datatype-) "easy_handeye_msgs/SampleList")
(setf (get easy_handeye_msgs::SampleList :definition-)
      "geometry_msgs/Transform[] hand_world_samples
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



(provide :easy_handeye_msgs/SampleList "19e891d084c5a799fdfe97bd1dbbf9c5")


