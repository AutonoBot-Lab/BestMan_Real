;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::SetAlgorithm)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'SetAlgorithm (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::SETALGORITHM")
  (make-package "EASY_HANDEYE_MSGS::SETALGORITHM"))
(unless (find-package "EASY_HANDEYE_MSGS::SETALGORITHMREQUEST")
  (make-package "EASY_HANDEYE_MSGS::SETALGORITHMREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::SETALGORITHMRESPONSE")
  (make-package "EASY_HANDEYE_MSGS::SETALGORITHMRESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::SetAlgorithmRequest
  :super ros::object
  :slots (_new_algorithm ))

(defmethod easy_handeye_msgs::SetAlgorithmRequest
  (:init
   (&key
    ((:new_algorithm __new_algorithm) "")
    )
   (send-super :init)
   (setq _new_algorithm (string __new_algorithm))
   self)
  (:new_algorithm
   (&optional __new_algorithm)
   (if __new_algorithm (setq _new_algorithm __new_algorithm)) _new_algorithm)
  (:serialization-length
   ()
   (+
    ;; string _new_algorithm
    4 (length _new_algorithm)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _new_algorithm
       (write-long (length _new_algorithm) s) (princ _new_algorithm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _new_algorithm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_algorithm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass easy_handeye_msgs::SetAlgorithmResponse
  :super ros::object
  :slots (_success ))

(defmethod easy_handeye_msgs::SetAlgorithmResponse
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

(defclass easy_handeye_msgs::SetAlgorithm
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::SetAlgorithm :md5sum-) "e997a30f8fd361b5c93f82bb8a67d408")
(setf (get easy_handeye_msgs::SetAlgorithm :datatype-) "easy_handeye_msgs/SetAlgorithm")
(setf (get easy_handeye_msgs::SetAlgorithm :request) easy_handeye_msgs::SetAlgorithmRequest)
(setf (get easy_handeye_msgs::SetAlgorithm :response) easy_handeye_msgs::SetAlgorithmResponse)

(defmethod easy_handeye_msgs::SetAlgorithmRequest
  (:response () (instance easy_handeye_msgs::SetAlgorithmResponse :init)))

(setf (get easy_handeye_msgs::SetAlgorithmRequest :md5sum-) "e997a30f8fd361b5c93f82bb8a67d408")
(setf (get easy_handeye_msgs::SetAlgorithmRequest :datatype-) "easy_handeye_msgs/SetAlgorithmRequest")
(setf (get easy_handeye_msgs::SetAlgorithmRequest :definition-)
      "string new_algorithm
---
bool success
")

(setf (get easy_handeye_msgs::SetAlgorithmResponse :md5sum-) "e997a30f8fd361b5c93f82bb8a67d408")
(setf (get easy_handeye_msgs::SetAlgorithmResponse :datatype-) "easy_handeye_msgs/SetAlgorithmResponse")
(setf (get easy_handeye_msgs::SetAlgorithmResponse :definition-)
      "string new_algorithm
---
bool success
")



(provide :easy_handeye_msgs/SetAlgorithm "e997a30f8fd361b5c93f82bb8a67d408")


