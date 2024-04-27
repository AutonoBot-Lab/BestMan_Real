;; Auto-generated. Do not edit!


(when (boundp 'easy_handeye_msgs::ListAlgorithms)
  (if (not (find-package "EASY_HANDEYE_MSGS"))
    (make-package "EASY_HANDEYE_MSGS"))
  (shadow 'ListAlgorithms (find-package "EASY_HANDEYE_MSGS")))
(unless (find-package "EASY_HANDEYE_MSGS::LISTALGORITHMS")
  (make-package "EASY_HANDEYE_MSGS::LISTALGORITHMS"))
(unless (find-package "EASY_HANDEYE_MSGS::LISTALGORITHMSREQUEST")
  (make-package "EASY_HANDEYE_MSGS::LISTALGORITHMSREQUEST"))
(unless (find-package "EASY_HANDEYE_MSGS::LISTALGORITHMSRESPONSE")
  (make-package "EASY_HANDEYE_MSGS::LISTALGORITHMSRESPONSE"))

(in-package "ROS")





(defclass easy_handeye_msgs::ListAlgorithmsRequest
  :super ros::object
  :slots ())

(defmethod easy_handeye_msgs::ListAlgorithmsRequest
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

(defclass easy_handeye_msgs::ListAlgorithmsResponse
  :super ros::object
  :slots (_algorithms _current_algorithm ))

(defmethod easy_handeye_msgs::ListAlgorithmsResponse
  (:init
   (&key
    ((:algorithms __algorithms) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_algorithm __current_algorithm) "")
    )
   (send-super :init)
   (setq _algorithms __algorithms)
   (setq _current_algorithm (string __current_algorithm))
   self)
  (:algorithms
   (&optional __algorithms)
   (if __algorithms (setq _algorithms __algorithms)) _algorithms)
  (:current_algorithm
   (&optional __current_algorithm)
   (if __current_algorithm (setq _current_algorithm __current_algorithm)) _current_algorithm)
  (:serialization-length
   ()
   (+
    ;; string[] _algorithms
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _algorithms)) 4
    ;; string _current_algorithm
    4 (length _current_algorithm)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _algorithms
     (write-long (length _algorithms) s)
     (dolist (elem _algorithms)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _current_algorithm
       (write-long (length _current_algorithm) s) (princ _current_algorithm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _algorithms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _algorithms (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _algorithms i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _current_algorithm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_algorithm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass easy_handeye_msgs::ListAlgorithms
  :super ros::object
  :slots ())

(setf (get easy_handeye_msgs::ListAlgorithms :md5sum-) "cf0f5784afc7ca3b01a2029aa7874966")
(setf (get easy_handeye_msgs::ListAlgorithms :datatype-) "easy_handeye_msgs/ListAlgorithms")
(setf (get easy_handeye_msgs::ListAlgorithms :request) easy_handeye_msgs::ListAlgorithmsRequest)
(setf (get easy_handeye_msgs::ListAlgorithms :response) easy_handeye_msgs::ListAlgorithmsResponse)

(defmethod easy_handeye_msgs::ListAlgorithmsRequest
  (:response () (instance easy_handeye_msgs::ListAlgorithmsResponse :init)))

(setf (get easy_handeye_msgs::ListAlgorithmsRequest :md5sum-) "cf0f5784afc7ca3b01a2029aa7874966")
(setf (get easy_handeye_msgs::ListAlgorithmsRequest :datatype-) "easy_handeye_msgs/ListAlgorithmsRequest")
(setf (get easy_handeye_msgs::ListAlgorithmsRequest :definition-)
      "---
string[] algorithms
string current_algorithm
")

(setf (get easy_handeye_msgs::ListAlgorithmsResponse :md5sum-) "cf0f5784afc7ca3b01a2029aa7874966")
(setf (get easy_handeye_msgs::ListAlgorithmsResponse :datatype-) "easy_handeye_msgs/ListAlgorithmsResponse")
(setf (get easy_handeye_msgs::ListAlgorithmsResponse :definition-)
      "---
string[] algorithms
string current_algorithm
")



(provide :easy_handeye_msgs/ListAlgorithms "cf0f5784afc7ca3b01a2029aa7874966")


