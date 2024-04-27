; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude PlanToSelectedTargetPose-request.msg.html

(cl:defclass <PlanToSelectedTargetPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PlanToSelectedTargetPose-request (<PlanToSelectedTargetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanToSelectedTargetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanToSelectedTargetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<PlanToSelectedTargetPose-request> is deprecated: use easy_handeye_msgs-srv:PlanToSelectedTargetPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanToSelectedTargetPose-request>) ostream)
  "Serializes a message object of type '<PlanToSelectedTargetPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanToSelectedTargetPose-request>) istream)
  "Deserializes a message object of type '<PlanToSelectedTargetPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanToSelectedTargetPose-request>)))
  "Returns string type for a service object of type '<PlanToSelectedTargetPose-request>"
  "easy_handeye_msgs/PlanToSelectedTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToSelectedTargetPose-request)))
  "Returns string type for a service object of type 'PlanToSelectedTargetPose-request"
  "easy_handeye_msgs/PlanToSelectedTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanToSelectedTargetPose-request>)))
  "Returns md5sum for a message object of type '<PlanToSelectedTargetPose-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanToSelectedTargetPose-request)))
  "Returns md5sum for a message object of type 'PlanToSelectedTargetPose-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanToSelectedTargetPose-request>)))
  "Returns full string definition for message of type '<PlanToSelectedTargetPose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanToSelectedTargetPose-request)))
  "Returns full string definition for message of type 'PlanToSelectedTargetPose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanToSelectedTargetPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanToSelectedTargetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanToSelectedTargetPose-request
))
;//! \htmlinclude PlanToSelectedTargetPose-response.msg.html

(cl:defclass <PlanToSelectedTargetPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanToSelectedTargetPose-response (<PlanToSelectedTargetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanToSelectedTargetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanToSelectedTargetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<PlanToSelectedTargetPose-response> is deprecated: use easy_handeye_msgs-srv:PlanToSelectedTargetPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanToSelectedTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:success-val is deprecated.  Use easy_handeye_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanToSelectedTargetPose-response>) ostream)
  "Serializes a message object of type '<PlanToSelectedTargetPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanToSelectedTargetPose-response>) istream)
  "Deserializes a message object of type '<PlanToSelectedTargetPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanToSelectedTargetPose-response>)))
  "Returns string type for a service object of type '<PlanToSelectedTargetPose-response>"
  "easy_handeye_msgs/PlanToSelectedTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToSelectedTargetPose-response)))
  "Returns string type for a service object of type 'PlanToSelectedTargetPose-response"
  "easy_handeye_msgs/PlanToSelectedTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanToSelectedTargetPose-response>)))
  "Returns md5sum for a message object of type '<PlanToSelectedTargetPose-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanToSelectedTargetPose-response)))
  "Returns md5sum for a message object of type 'PlanToSelectedTargetPose-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanToSelectedTargetPose-response>)))
  "Returns full string definition for message of type '<PlanToSelectedTargetPose-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanToSelectedTargetPose-response)))
  "Returns full string definition for message of type 'PlanToSelectedTargetPose-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanToSelectedTargetPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanToSelectedTargetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanToSelectedTargetPose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanToSelectedTargetPose)))
  'PlanToSelectedTargetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanToSelectedTargetPose)))
  'PlanToSelectedTargetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanToSelectedTargetPose)))
  "Returns string type for a service object of type '<PlanToSelectedTargetPose>"
  "easy_handeye_msgs/PlanToSelectedTargetPose")