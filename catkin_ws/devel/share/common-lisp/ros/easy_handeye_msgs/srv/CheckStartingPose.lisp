; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude CheckStartingPose-request.msg.html

(cl:defclass <CheckStartingPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CheckStartingPose-request (<CheckStartingPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckStartingPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckStartingPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<CheckStartingPose-request> is deprecated: use easy_handeye_msgs-srv:CheckStartingPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckStartingPose-request>) ostream)
  "Serializes a message object of type '<CheckStartingPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckStartingPose-request>) istream)
  "Deserializes a message object of type '<CheckStartingPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckStartingPose-request>)))
  "Returns string type for a service object of type '<CheckStartingPose-request>"
  "easy_handeye_msgs/CheckStartingPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStartingPose-request)))
  "Returns string type for a service object of type 'CheckStartingPose-request"
  "easy_handeye_msgs/CheckStartingPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckStartingPose-request>)))
  "Returns md5sum for a message object of type '<CheckStartingPose-request>"
  "2e21f20435619eabca85520d8feb5839")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckStartingPose-request)))
  "Returns md5sum for a message object of type 'CheckStartingPose-request"
  "2e21f20435619eabca85520d8feb5839")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckStartingPose-request>)))
  "Returns full string definition for message of type '<CheckStartingPose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckStartingPose-request)))
  "Returns full string definition for message of type 'CheckStartingPose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckStartingPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckStartingPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckStartingPose-request
))
;//! \htmlinclude CheckStartingPose-response.msg.html

(cl:defclass <CheckStartingPose-response> (roslisp-msg-protocol:ros-message)
  ((can_calibrate
    :reader can_calibrate
    :initarg :can_calibrate
    :type cl:boolean
    :initform cl:nil)
   (target_poses
    :reader target_poses
    :initarg :target_poses
    :type easy_handeye_msgs-msg:TargetPoseList
    :initform (cl:make-instance 'easy_handeye_msgs-msg:TargetPoseList)))
)

(cl:defclass CheckStartingPose-response (<CheckStartingPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckStartingPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckStartingPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<CheckStartingPose-response> is deprecated: use easy_handeye_msgs-srv:CheckStartingPose-response instead.")))

(cl:ensure-generic-function 'can_calibrate-val :lambda-list '(m))
(cl:defmethod can_calibrate-val ((m <CheckStartingPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:can_calibrate-val is deprecated.  Use easy_handeye_msgs-srv:can_calibrate instead.")
  (can_calibrate m))

(cl:ensure-generic-function 'target_poses-val :lambda-list '(m))
(cl:defmethod target_poses-val ((m <CheckStartingPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:target_poses-val is deprecated.  Use easy_handeye_msgs-srv:target_poses instead.")
  (target_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckStartingPose-response>) ostream)
  "Serializes a message object of type '<CheckStartingPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_calibrate) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_poses) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckStartingPose-response>) istream)
  "Deserializes a message object of type '<CheckStartingPose-response>"
    (cl:setf (cl:slot-value msg 'can_calibrate) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_poses) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckStartingPose-response>)))
  "Returns string type for a service object of type '<CheckStartingPose-response>"
  "easy_handeye_msgs/CheckStartingPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStartingPose-response)))
  "Returns string type for a service object of type 'CheckStartingPose-response"
  "easy_handeye_msgs/CheckStartingPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckStartingPose-response>)))
  "Returns md5sum for a message object of type '<CheckStartingPose-response>"
  "2e21f20435619eabca85520d8feb5839")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckStartingPose-response)))
  "Returns md5sum for a message object of type 'CheckStartingPose-response"
  "2e21f20435619eabca85520d8feb5839")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckStartingPose-response>)))
  "Returns full string definition for message of type '<CheckStartingPose-response>"
  (cl:format cl:nil "bool can_calibrate~%easy_handeye_msgs/TargetPoseList target_poses~%~%================================================================================~%MSG: easy_handeye_msgs/TargetPoseList~%geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckStartingPose-response)))
  "Returns full string definition for message of type 'CheckStartingPose-response"
  (cl:format cl:nil "bool can_calibrate~%easy_handeye_msgs/TargetPoseList target_poses~%~%================================================================================~%MSG: easy_handeye_msgs/TargetPoseList~%geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckStartingPose-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_poses))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckStartingPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckStartingPose-response
    (cl:cons ':can_calibrate (can_calibrate msg))
    (cl:cons ':target_poses (target_poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckStartingPose)))
  'CheckStartingPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckStartingPose)))
  'CheckStartingPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckStartingPose)))
  "Returns string type for a service object of type '<CheckStartingPose>"
  "easy_handeye_msgs/CheckStartingPose")