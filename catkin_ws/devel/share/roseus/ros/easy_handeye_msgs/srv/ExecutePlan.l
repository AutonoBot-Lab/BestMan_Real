;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::ExecutePlan)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'ExecutePlan (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::EXECUTEPLAN")
  (make-package "EASY_HANDEYE_MSGS::EXECUTEPLAN"))
(unless (find-package "EASY_HANDEYE_MSGS::EXECUTEPLANREQUEST")
  (make-package "EASY_HANDEYE_MSGS::EXECUTEPLANREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::EXECUTEPLANRESPONSE")
  (make-package "EASY_HANDEYE_MSGS::EXECUTEPLANRESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::ExecutePlanRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::ExecutePlanRequest
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

(defclass easy_handeye_msgs::ExecutePlanResponse
  :super ros::object
  :slots (_success ))

(defmethod easy_handeye_msgs::ExecutePlanResponse
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

(defclass easy_handeye_msgs::ExecutePlan
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::ExecutePlan :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get easy_handeye_msgs::ExecutePlan :datatype-) "easy_handeye_msgs/ExecutePlan")
(setf (get easy_handeye_msgs::ExecutePlan :request) easy_handeye_msgs::ExecutePlanRequest)
(setf (get easy_handeye_msgs::ExecutePlan :response) easy_handeye_msgs::ExecutePlanResponse)

(defmethod easy_handeye_msgs::ExecutePlanRequest
  (:response () (instance easy_handeye_msgs::ExecutePlanResponse :init)))

(setf (get easy_handeye_msgs::ExecutePlanRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get easy_handeye_msgs::ExecutePlanRequest :datatype-) "easy_handeye_msgs/ExecutePlanRequest")
(setf (get easy_handeye_msgs::ExecutePlanRequest :definition-)
      "---
bool success
")

(setf (get easy_handeye_msgs::ExecutePlanResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get easy_handeye_msgs::ExecutePlanResponse :datatype-) "easy_handeye_msgs/ExecutePlanResponse")
(setf (get easy_handeye_msgs::ExecutePlanResponse :definition-)
      "---
bool success
")



(provide :easy_handeye_msgs/ExecutePlan "358e233cde0c8a8bcfea4ce193f8fc15")


