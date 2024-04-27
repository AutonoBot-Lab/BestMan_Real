; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-msg)


;//! \htmlinclude TargetPoseList.msg.html

(cl:defclass <TargetPoseList> (roslisp-msg-protocol:ros-message)
  ((home_pose
    :reader home_pose
    :initarg :home_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (target_poses
    :reader target_poses
    :initarg :target_poses
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (current_target_pose_index
    :reader current_target_pose_index
    :initarg :current_target_pose_index
    :type cl:integer
    :initform 0))
)

(cl:defclass TargetPoseList (<TargetPoseList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPoseList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPoseList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-msg:<TargetPoseList> is deprecated: use easy_handeye_msgs-msg:TargetPoseList instead.")))

(cl:ensure-generic-function 'home_pose-val :lambda-list '(m))
(cl:defmethod home_pose-val ((m <TargetPoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-msg:home_pose-val is deprecated.  Use easy_handeye_msgs-msg:home_pose instead.")
  (home_pose m))

(cl:ensure-generic-function 'target_poses-val :lambda-list '(m))
(cl:defmethod target_poses-val ((m <TargetPoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-msg:target_poses-val is deprecated.  Use easy_handeye_msgs-msg:target_poses instead.")
  (target_poses m))

(cl:ensure-generic-function 'current_target_pose_index-val :lambda-list '(m))
(cl:defmethod current_target_pose_index-val ((m <TargetPoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-msg:current_target_pose_index-val is deprecated.  Use easy_handeye_msgs-msg:current_target_pose_index instead.")
  (current_target_pose_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPoseList>) ostream)
  "Serializes a message object of type '<TargetPoseList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'home_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_poses))
  (cl:let* ((signed (cl:slot-value msg 'current_target_pose_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPoseList>) istream)
  "Deserializes a message object of type '<TargetPoseList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'home_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_target_pose_index) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPoseList>)))
  "Returns string type for a message object of type '<TargetPoseList>"
  "easy_handeye_msgs/TargetPoseList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPoseList)))
  "Returns string type for a message object of type 'TargetPoseList"
  "easy_handeye_msgs/TargetPoseList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPoseList>)))
  "Returns md5sum for a message object of type '<TargetPoseList>"
  "6c343b905aff6f17d2d7f55ae6eecc3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPoseList)))
  "Returns md5sum for a message object of type 'TargetPoseList"
  "6c343b905aff6f17d2d7f55ae6eecc3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPoseList>)))
  "Returns full string definition for message of type '<TargetPoseList>"
  (cl:format cl:nil "geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPoseList)))
  "Returns full string definition for message of type 'TargetPoseList"
  (cl:format cl:nil "geometry_msgs/PoseStamped home_pose~%geometry_msgs/PoseStamped[] target_poses~%int64 current_target_pose_index~%# TODO: add joint poses (which are what will actually be used)~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPoseList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'home_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPoseList>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPoseList
    (cl:cons ':home_pose (home_pose msg))
    (cl:cons ':target_poses (target_poses msg))
    (cl:cons ':current_target_pose_index (current_target_pose_index msg))
))
