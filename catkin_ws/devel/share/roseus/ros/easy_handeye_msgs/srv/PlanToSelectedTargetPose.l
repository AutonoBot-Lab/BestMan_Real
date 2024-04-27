;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::PlanToSelectedTargetPose)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'PlanToSelectedTargetPose (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::PLANTOSELECTEDTARGETPOSE")
  (make-package "EASY_HANDEYE_MSGS::PLANTOSELECTEDTARGETPOSE"))
(unless (find-package "EASY_HANDEYE_MSGS::PLANTOSELECTEDTARGETPOSEREQUEST")
  (make-package "EASY_HANDEYE_MSGS::PLANTOSELECTEDTARGETPOSEREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::PLANTOSELECTEDTARGETPOSERESPONSE")
  (make-package "EASY_HANDEYE_MSGS::PLANTOSELECTEDTARGETPOSERESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::PlanToSelectedTargetPoseRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::PlanToSelectedTargetPoseRequest
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

(defclass easy_handeye_msgs::PlanToSelectedTargetPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod easy_handeye_msgs::PlanToSelectedTargetPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass easy_handeye_msgs::PlanToSelectedTargetPose
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::PlanToSelectedTargetPose :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get easy_handeye_msgs::PlanToSelectedTargetPose :datatype-) "easy_handeye_msgs/PlanToSelectedTargetPose")
(setf (get easy_handeye_msgs::PlanToSelectedTargetPose :request) easy_handeye_msgs::PlanToSelectedTargetPoseRequest)
(setf (get easy_handeye_msgs::PlanToSelectedTargetPose :response) easy_handeye_msgs::PlanToSelectedTargetPoseResponse)

(defmethod easy_handeye_msgs::PlanToSelectedTargetPoseRequest
  (:response () (instance easy_handeye_msgs::PlanToSelectedTargetPoseResponse :init)))

(setf (get easy_handeye_msgs::PlanToSelectedTargetPoseRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get easy_handeye_msgs::PlanToSelectedTargetPoseRequest :datatype-) "easy_handeye_msgs/PlanToSelectedTargetPoseRequest")
(setf (get easy_handeye_msgs::PlanToSelectedTargetPoseRequest :definition-)
      "---
bool success
")

(setf (get easy_handeye_msgs::PlanToSelectedTargetPoseResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get easy_handeye_msgs::PlanToSelectedTargetPoseResponse :datatype-) "easy_handeye_msgs/PlanToSelectedTargetPoseResponse")
(setf (get easy_handeye_msgs::PlanToSelectedTargetPoseResponse :definition-)
      "---
bool success
")



(provide :easy_handeye_msgs/PlanToSelectedTargetPose "358e233cde0c8a8bcfea4ce193f8fc15")


