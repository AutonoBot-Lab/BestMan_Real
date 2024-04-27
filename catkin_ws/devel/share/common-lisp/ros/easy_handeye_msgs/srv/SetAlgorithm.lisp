; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude SetAlgorithm-request.msg.html

(cl:defclass <SetAlgorithm-request> (roslisp-msg-protocol:ros-message)
  ((new_algorithm
    :reader new_algorithm
    :initarg :new_algorithm
    :type cl:string
    :initform ""))
)

(cl:defclass SetAlgorithm-request (<SetAlgorithm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAlgorithm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAlgorithm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<SetAlgorithm-request> is deprecated: use easy_handeye_msgs-srv:SetAlgorithm-request instead.")))

(cl:ensure-generic-function 'new_algorithm-val :lambda-list '(m))
(cl:defmethod new_algorithm-val ((m <SetAlgorithm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:new_algorithm-val is deprecated.  Use easy_handeye_msgs-srv:new_algorithm instead.")
  (new_algorithm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAlgorithm-request>) ostream)
  "Serializes a message object of type '<SetAlgorithm-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_algorithm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_algorithm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAlgorithm-request>) istream)
  "Deserializes a message object of type '<SetAlgorithm-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_algorithm) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_algorithm) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAlgorithm-request>)))
  "Returns string type for a service object of type '<SetAlgorithm-request>"
  "easy_handeye_msgs/SetAlgorithmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAlgorithm-request)))
  "Returns string type for a service object of type 'SetAlgorithm-request"
  "easy_handeye_msgs/SetAlgorithmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAlgorithm-request>)))
  "Returns md5sum for a message object of type '<SetAlgorithm-request>"
  "e997a30f8fd361b5c93f82bb8a67d408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAlgorithm-request)))
  "Returns md5sum for a message object of type 'SetAlgorithm-request"
  "e997a30f8fd361b5c93f82bb8a67d408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAlgorithm-request>)))
  "Returns full string definition for message of type '<SetAlgorithm-request>"
  (cl:format cl:nil "string new_algorithm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAlgorithm-request)))
  "Returns full string definition for message of type 'SetAlgorithm-request"
  (cl:format cl:nil "string new_algorithm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAlgorithm-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'new_algorithm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAlgorithm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAlgorithm-request
    (cl:cons ':new_algorithm (new_algorithm msg))
))
;//! \htmlinclude SetAlgorithm-response.msg.html

(cl:defclass <SetAlgorithm-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAlgorithm-response (<SetAlgorithm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAlgorithm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAlgorithm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<SetAlgorithm-response> is deprecated: use easy_handeye_msgs-srv:SetAlgorithm-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAlgorithm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:success-val is deprecated.  Use easy_handeye_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAlgorithm-response>) ostream)
  "Serializes a message object of type '<SetAlgorithm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAlgorithm-response>) istream)
  "Deserializes a message object of type '<SetAlgorithm-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAlgorithm-response>)))
  "Returns string type for a service object of type '<SetAlgorithm-response>"
  "easy_handeye_msgs/SetAlgorithmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAlgorithm-response)))
  "Returns string type for a service object of type 'SetAlgorithm-response"
  "easy_handeye_msgs/SetAlgorithmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAlgorithm-response>)))
  "Returns md5sum for a message object of type '<SetAlgorithm-response>"
  "e997a30f8fd361b5c93f82bb8a67d408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAlgorithm-response)))
  "Returns md5sum for a message object of type 'SetAlgorithm-response"
  "e997a30f8fd361b5c93f82bb8a67d408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAlgorithm-response>)))
  "Returns full string definition for message of type '<SetAlgorithm-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAlgorithm-response)))
  "Returns full string definition for message of type 'SetAlgorithm-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAlgorithm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAlgorithm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAlgorithm-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAlgorithm)))
  'SetAlgorithm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAlgorithm)))
  'SetAlgorithm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAlgorithm)))
  "Returns string type for a service object of type '<SetAlgorithm>"
  "easy_handeye_msgs/SetAlgorithm")