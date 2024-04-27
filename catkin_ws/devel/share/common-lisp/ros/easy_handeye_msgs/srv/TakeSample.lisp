; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude TakeSample-request.msg.html

(cl:defclass <TakeSample-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TakeSample-request (<TakeSample-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeSample-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeSample-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<TakeSample-request> is deprecated: use easy_handeye_msgs-srv:TakeSample-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeSample-request>) ostream)
  "Serializes a message object of type '<TakeSample-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeSample-request>) istream)
  "Deserializes a message object of type '<TakeSample-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeSample-request>)))
  "Returns string type for a service object of type '<TakeSample-request>"
  "easy_handeye_msgs/TakeSampleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeSample-request)))
  "Returns string type for a service object of type 'TakeSample-request"
  "easy_handeye_msgs/TakeSampleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeSample-request>)))
  "Returns md5sum for a message object of type '<TakeSample-request>"
  "7d95fb9676bbeca74481a1f545ed96b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeSample-request)))
  "Returns md5sum for a message object of type 'TakeSample-request"
  "7d95fb9676bbeca74481a1f545ed96b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeSample-request>)))
  "Returns full string definition for message of type '<TakeSample-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeSample-request)))
  "Returns full string definition for message of type 'TakeSample-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeSample-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeSample-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeSample-request
))
;//! \htmlinclude TakeSample-response.msg.html

(cl:defclass <TakeSample-response> (roslisp-msg-protocol:ros-message)
  ((samples
    :reader samples
    :initarg :samples
    :type easy_handeye_msgs-msg:SampleList
    :initform (cl:make-instance 'easy_handeye_msgs-msg:SampleList)))
)

(cl:defclass TakeSample-response (<TakeSample-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeSample-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeSample-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<TakeSample-response> is deprecated: use easy_handeye_msgs-srv:TakeSample-response instead.")))

(cl:ensure-generic-function 'samples-val :lambda-list '(m))
(cl:defmethod samples-val ((m <TakeSample-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:samples-val is deprecated.  Use easy_handeye_msgs-srv:samples instead.")
  (samples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeSample-response>) ostream)
  "Serializes a message object of type '<TakeSample-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'samples) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeSample-response>) istream)
  "Deserializes a message object of type '<TakeSample-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'samples) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeSample-response>)))
  "Returns string type for a service object of type '<TakeSample-response>"
  "easy_handeye_msgs/TakeSampleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeSample-response)))
  "Returns string type for a service object of type 'TakeSample-response"
  "easy_handeye_msgs/TakeSampleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeSample-response>)))
  "Returns md5sum for a message object of type '<TakeSample-response>"
  "7d95fb9676bbeca74481a1f545ed96b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeSample-response)))
  "Returns md5sum for a message object of type 'TakeSample-response"
  "7d95fb9676bbeca74481a1f545ed96b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeSample-response>)))
  "Returns full string definition for message of type '<TakeSample-response>"
  (cl:format cl:nil "SampleList samples~%~%================================================================================~%MSG: easy_handeye_msgs/SampleList~%geometry_msgs/Transform[] hand_world_samples~%geometry_msgs/Transform[] camera_marker_samples~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeSample-response)))
  "Returns full string definition for message of type 'TakeSample-response"
  (cl:format cl:nil "SampleList samples~%~%================================================================================~%MSG: easy_handeye_msgs/SampleList~%geometry_msgs/Transform[] hand_world_samples~%geometry_msgs/Transform[] camera_marker_samples~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeSample-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'samples))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeSample-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeSample-response
    (cl:cons ':samples (samples msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakeSample)))
  'TakeSample-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakeSample)))
  'TakeSample-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeSample)))
  "Returns string type for a service object of type '<TakeSample>"
  "easy_handeye_msgs/TakeSample")