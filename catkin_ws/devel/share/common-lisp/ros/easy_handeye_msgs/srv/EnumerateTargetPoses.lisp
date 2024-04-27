; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude EnumerateTargetPoses-request.msg.html

(cl:defclass <EnumerateTargetPoses-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EnumerateTargetPoses-request (<EnumerateTargetPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnumerateTargetPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnumerateTargetPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<EnumerateTargetPoses-request> is deprecated: use easy_handeye_msgs-srv:EnumerateTargetPoses-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnumerateTargetPoses-request>) ostream)
  "Serializes a message object of type '<EnumerateTargetPoses-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnumerateTargetPoses-request>) istream)
  "Deserializes a message object of type '<EnumerateTargetPoses-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnumerateTargetPoses-request>)))
  "Returns string type for a service object of type '<EnumerateTargetPoses-request>"
  "easy_handeye_msgs/EnumerateTargetPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnumerateTargetPoses-request)))
  "Returns string type for a service object of type 'EnumerateTargetPoses-request"
  "easy_handeye_msgs/EnumerateTargetPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnumerateTargetPoses-request>)))
  "Returns md5sum for a message object of type '<EnumerateTargetPoses-request>"
  "80d5a3ee3a473035f3acfbf477197597")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnumerateTargetPoses-request)))
  "Returns md5sum for a message object of type 'EnumerateTargetPoses-request"
  "80d5a3ee3a473035f3acfbf477197597")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnumerateTargetPoses-request>)))
  "Returns full string definition for message of type '<EnumerateTargetPoses-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnumerateTargetPoses-request)))
  "Returns full string definition for message of type 'EnumerateTargetPoses-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnumerateTargetPoses-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnumerateTargetPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnumerateTargetPoses-request
))
;//! \htmlinclude EnumerateTargetPoses-response.msg.html

(cl:defclass <EnumerateTargetPoses-response> (roslisp-msg-protocol:ros-message)
  ((target_poses
    :reader target_poses
    :initarg :target_poses
    :type easy_handeye_msgs-msg:TargetPoseList
    :initform (cl:make-instance 'easy_handeye_msgs-msg:TargetPoseList)))
)

(cl:defclass EnumerateTargetPoses-response (<EnumerateTargetPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnumerateTargetPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnumerateTargetPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<EnumerateTargetPoses-response> is deprecated: use easy_handeye_msgs-srv:EnumerateTargetPoses-response instead.")))

(cl:ensure-generic-function 'target_poses-val :lambda-list '(m))
(cl:defmethod target_poses-val ((m <EnumerateTargetPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:target_poses-val is deprecated.  Use easy_handeye_msgs-srv:target_poses instead.")
  (target_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnumerateTargetPoses-response>) ostream)
  "Serializes a message object of type '<EnumerateTargetPoses-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_poses) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnumerateTargetPoses-response>) istream)
  "Deserializes a message object of type '<EnumerateTargetPoses-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_poses) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnumerateTargetPoses-response>)))
  "Returns string type for a service object of type '<EnumerateTargetPoses-response>"
  "easy_handeye_msgs/EnumerateTargetPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnumerateTargetPoses-response)))
  "Returns string type for a service object of type 'EnumerateTargetPoses-response"
  "easy_handeye_msgs/EnumerateTargetPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnumerateTargetPoses-response>)))
  "Returns md5sum for a message object of type '<EnumerateTargetPoses-response>"
  "80d5a3ee3a473035f3acfbf477197597")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnumerateTargetPoses-response)))
  "Returns md5sum for a message object of type 'EnumerateTargetPoses-response"
  "80d5a3ee3a473035f3acfbf477197597")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnumerateTargetPoses-response>)))
  "Returns full string definition for message of type '<EnumerateTargetPoses-response>"
  (cl:format cl:nil "easy_handeye_msgs/TargetPoseList target_poses~%~%================================================================================~%MSG: easy_handeye_msgs/TargetPoseList~%geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnumerateTargetPoses-response)))
  "Returns full string definition for message of type 'EnumerateTargetPoses-response"
  (cl:format cl:nil "easy_handeye_msgs/TargetPoseList target_poses~%~%================================================================================~%MSG: easy_handeye_msgs/TargetPoseList~%geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnumerateTargetPoses-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_poses))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnumerateTargetPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnumerateTargetPoses-response
    (cl:cons ':target_poses (target_poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnumerateTargetPoses)))
  'EnumerateTargetPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnumerateTargetPoses)))
  'EnumerateTargetPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnumerateTargetPoses)))
  "Returns string type for a service object of type '<EnumerateTargetPoses>"
  "easy_handeye_msgs/EnumerateTargetPoses")