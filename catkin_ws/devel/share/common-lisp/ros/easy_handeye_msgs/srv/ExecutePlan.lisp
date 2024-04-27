; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude ExecutePlan-request.msg.html

(cl:defclass <ExecutePlan-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExecutePlan-request (<ExecutePlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<ExecutePlan-request> is deprecated: use easy_handeye_msgs-srv:ExecutePlan-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePlan-request>) ostream)
  "Serializes a message object of type '<ExecutePlan-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePlan-request>) istream)
  "Deserializes a message object of type '<ExecutePlan-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePlan-request>)))
  "Returns string type for a service object of type '<ExecutePlan-request>"
  "easy_handeye_msgs/ExecutePlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePlan-request)))
  "Returns string type for a service object of type 'ExecutePlan-request"
  "easy_handeye_msgs/ExecutePlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePlan-request>)))
  "Returns md5sum for a message object of type '<ExecutePlan-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePlan-request)))
  "Returns md5sum for a message object of type 'ExecutePlan-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePlan-request>)))
  "Returns full string definition for message of type '<ExecutePlan-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePlan-request)))
  "Returns full string definition for message of type 'ExecutePlan-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePlan-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePlan-request
))
;//! \htmlinclude ExecutePlan-response.msg.html

(cl:defclass <ExecutePlan-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ExecutePlan-response (<ExecutePlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<ExecutePlan-response> is deprecated: use easy_handeye_msgs-srv:ExecutePlan-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExecutePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:success-val is deprecated.  Use easy_handeye_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePlan-response>) ostream)
  "Serializes a message object of type '<ExecutePlan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePlan-response>) istream)
  "Deserializes a message object of type '<ExecutePlan-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePlan-response>)))
  "Returns string type for a service object of type '<ExecutePlan-response>"
  "easy_handeye_msgs/ExecutePlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePlan-response)))
  "Returns string type for a service object of type 'ExecutePlan-response"
  "easy_handeye_msgs/ExecutePlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePlan-response>)))
  "Returns md5sum for a message object of type '<ExecutePlan-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePlan-response)))
  "Returns md5sum for a message object of type 'ExecutePlan-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePlan-response>)))
  "Returns full string definition for message of type '<ExecutePlan-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePlan-response)))
  "Returns full string definition for message of type 'ExecutePlan-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePlan-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePlan-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecutePlan)))
  'ExecutePlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecutePlan)))
  'ExecutePlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePlan)))
  "Returns string type for a service object of type '<ExecutePlan>"
  "easy_handeye_msgs/ExecutePlan")