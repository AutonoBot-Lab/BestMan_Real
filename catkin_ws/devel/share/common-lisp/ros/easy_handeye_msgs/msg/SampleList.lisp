; Auto-generated. Do not edit!


(cl:in-package easy_handeye_msgs-msg)


;//! \htmlinclude SampleList.msg.html

(cl:defclass <SampleList> (roslisp-msg-protocol:ros-message)
  ((hand_world_samples
    :reader hand_world_samples
    :initarg :hand_world_samples
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform)))
   (camera_marker_samples
    :reader camera_marker_samples
    :initarg :camera_marker_samples
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform))))
)

(cl:defclass SampleList (<SampleList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SampleList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SampleList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name easy_handeye_msgs-msg:<SampleList> is deprecated: use easy_handeye_msgs-msg:SampleList instead.")))

(cl:ensure-generic-function 'hand_world_samples-val :lambda-list '(m))
(cl:defmethod hand_world_samples-val ((m <SampleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-msg:hand_world_samples-val is deprecated.  Use easy_handeye_msgs-msg:hand_world_samples instead.")
  (hand_world_samples m))

(cl:ensure-generic-function 'camera_marker_samples-val :lambda-list '(m))
(cl:defmethod camera_marker_samples-val ((m <SampleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader easy_handeye_msgs-msg:camera_marker_samples-val is deprecated.  Use easy_handeye_msgs-msg:camera_marker_samples instead.")
  (camera_marker_samples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SampleList>) ostream)
  "Serializes a message object of type '<SampleList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hand_world_samples))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hand_world_samples))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_marker_samples))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_marker_samples))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SampleList>) istream)
  "Deserializes a message object of type '<SampleList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hand_world_samples) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hand_world_samples)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_marker_samples) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_marker_samples)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SampleList>)))
  "Returns string type for a message object of type '<SampleList>"
  "easy_handeye_msgs/SampleList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SampleList)))
  "Returns string type for a message object of type 'SampleList"
  "easy_handeye_msgs/SampleList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SampleList>)))
  "Returns md5sum for a message object of type '<SampleList>"
  "19e891d084c5a799fdfe97bd1dbbf9c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SampleList)))
  "Returns md5sum for a message object of type 'SampleList"
  "19e891d084c5a799fdfe97bd1dbbf9c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SampleList>)))
  "Returns full string definition for message of type '<SampleList>"
  (cl:format cl:nil "geometry_msgs/Transform[] hand_world_samples~%geometry_msgs/Transform[] camera_marker_samples~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SampleList)))
  "Returns full string definition for message of type 'SampleList"
  (cl:format cl:nil "geometry_msgs/Transform[] hand_world_samples~%geometry_msgs/Transform[] camera_marker_samples~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SampleList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hand_world_samples) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_marker_samples) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SampleList>))
  "Converts a ROS message object to a list"
  (cl:list 'SampleList
    (cl:cons ':hand_world_samples (hand_world_samples msg))
    (cl:cons ':camera_marker_samples (camera_marker_samples msg))
))
