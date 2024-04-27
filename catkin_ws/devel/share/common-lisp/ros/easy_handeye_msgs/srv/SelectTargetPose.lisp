; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-srv)


;//! \htmlinclude SelectTargetPose-request.msg.html

(cl:defclass <SelectTargetPose-request> (roslisp-msg-protocol:ros-message)
  ((target_pose_index
    :reader target_pose_index
    :initarg :target_pose_index
    :type cl:integer
    :initform 0))
)

(cl:defclass SelectTargetPose-request (<SelectTargetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelectTargetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelectTargetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<SelectTargetPose-request> is deprecated: use easy_handeye_msgs-srv:SelectTargetPose-request instead.")))

(cl:ensure-generic-function 'target_pose_index-val :lambda-list '(m))
(cl:defmethod target_pose_index-val ((m <SelectTargetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:target_pose_index-val is deprecated.  Use easy_handeye_msgs-srv:target_pose_index instead.")
  (target_pose_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelectTargetPose-request>) ostream)
  "Serializes a message object of type '<SelectTargetPose-request>"
  (cl:let* ((signed (cl:slot-value msg 'target_pose_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelectTargetPose-request>) istream)
  "Deserializes a message object of type '<SelectTargetPose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_pose_index) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelectTargetPose-request>)))
  "Returns string type for a service object of type '<SelectTargetPose-request>"
  "easy_handeye_msgs/SelectTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectTargetPose-request)))
  "Returns string type for a service object of type 'SelectTargetPose-request"
  "easy_handeye_msgs/SelectTargetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelectTargetPose-request>)))
  "Returns md5sum for a message object of type '<SelectTargetPose-request>"
  "7b5a90234960b4a47b29711a1572dab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelectTargetPose-request)))
  "Returns md5sum for a message object of type 'SelectTargetPose-request"
  "7b5a90234960b4a47b29711a1572dab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelectTargetPose-request>)))
  "Returns full string definition for message of type '<SelectTargetPose-request>"
  (cl:format cl:nil "int64 target_pose_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelectTargetPose-request)))
  "Returns full string definition for message of type 'SelectTargetPose-request"
  (cl:format cl:nil "int64 target_pose_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelectTargetPose-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelectTargetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SelectTargetPose-request
    (cl:cons ':target_pose_index (target_pose_index msg))
))
;//! \htmlinclude SelectTargetPose-response.msg.html

(cl:defclass <SelectTargetPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (target_poses
    :reader target_poses
    :initarg :target_poses
    :type easy_handeye_msgs-msg:TargetPoseList
    :initform (cl:make-instance 'easy_handeye_msgs-msg:TargetPoseList)))
)

(cl:defclass SelectTargetPose-response (<SelectTargetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelectTargetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelectTargetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-srv:<SelectTargetPose-response> is deprecated: use easy_handeye_msgs-srv:SelectTargetPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SelectTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:success-val is deprecated.  Use easy_handeye_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'target_poses-val :lambda-list '(m))
(cl:defmethod target_poses-val ((m <SelectTargetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-srv:target_poses-val is deprecated.  Use easy_handeye_msgs-srv:target_poses instead.")
  (target_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelectTargetPose-response>) ostream)
  "Serializes a message object of type '<SelectTargetPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_poses) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelectTargetPose-response>) istream)
  "Deserializes a message object of type '<SelectTargetPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_poses) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelectTargetPose-response>)))
  "Returns string type for a service object of type '<SelectTargetPose-response>"
  "easy_handeye_msgs/SelectTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectTargetPose-response)))
  "Returns string type for a service object of type 'SelectTargetPose-response"
  "easy_handeye_msgs/SelectTargetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelectTargetPose-response>)))
  "Returns md5sum for a message object of type '<SelectTargetPose-response>"
  "7b5a90234960b4a47b29711a1572dab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelectTargetPose-response)))
  "Returns md5sum for a message object of type 'SelectTargetPose-response"
  "7b5a90234960b4a47b29711a1572dab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelectTargetPose-response>)))
  "Returns full string definition for message of type '<SelectTargetPose-response>"
  (cl:format cl:nil "bool success~%easy_handeye_msgs/TargetPoseList target_poses~%~%================================================================================~%MSG: easy_handeye_msgs/TargetPoseList~%geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelectTargetPose-response)))
  "Returns full string definition for message of type 'SelectTargetPose-response"
  (cl:format cl:nil "bool success~%easy_handeye_msgs/TargetPoseList target_poses~%~%================================================================================~%MSG: easy_handeye_msgs/TargetPoseList~%geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelectTargetPose-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_poses))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelectTargetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SelectTargetPose-response
    (cl:cons ':success (success msg))
    (cl:cons ':target_poses (target_poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SelectTargetPose)))
  'SelectTargetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SelectTargetPose)))
  'SelectTargetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectTargetPose)))
  "Returns string type for a service object of type '<SelectTargetPose>"
  "easy_handeye_msgs/SelectTargetPose")