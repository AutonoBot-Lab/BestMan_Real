; Auto-generated. Do not edit!


(cl:in-package sim_grasp-msg)


;//! \htmlinclude sim_graspModel.msg.html

(cl:defclass <sim_graspModel> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (grasp_depth
    :reader grasp_depth
    :initarg :grasp_depth
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass sim_graspModel (<sim_graspModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sim_graspModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sim_graspModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sim_grasp-msg:<sim_graspModel> is deprecated: use sim_grasp-msg:sim_graspModel instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <sim_graspModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_grasp-msg:x-val is deprecated.  Use sim_grasp-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <sim_graspModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_grasp-msg:y-val is deprecated.  Use sim_grasp-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <sim_graspModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_grasp-msg:z-val is deprecated.  Use sim_grasp-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'grasp_depth-val :lambda-list '(m))
(cl:defmethod grasp_depth-val ((m <sim_graspModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_grasp-msg:grasp_depth-val is deprecated.  Use sim_grasp-msg:grasp_depth instead.")
  (grasp_depth m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <sim_graspModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_grasp-msg:angle-val is deprecated.  Use sim_grasp-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <sim_graspModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sim_grasp-msg:width-val is deprecated.  Use sim_grasp-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sim_graspModel>) ostream)
  "Serializes a message object of type '<sim_graspModel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'grasp_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sim_graspModel>) istream)
  "Deserializes a message object of type '<sim_graspModel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grasp_depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sim_graspModel>)))
  "Returns string type for a message object of type '<sim_graspModel>"
  "sim_grasp/sim_graspModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sim_graspModel)))
  "Returns string type for a message object of type 'sim_graspModel"
  "sim_grasp/sim_graspModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sim_graspModel>)))
  "Returns md5sum for a message object of type '<sim_graspModel>"
  "301be63e53b935edf2f7fc2376d5d03a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sim_graspModel)))
  "Returns md5sum for a message object of type 'sim_graspModel"
  "301be63e53b935edf2f7fc2376d5d03a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sim_graspModel>)))
  "Returns full string definition for message of type '<sim_graspModel>"
  (cl:format cl:nil "# x, y: 抓取点的像素坐标 (x, y)~%# z: 抓取点的深度距离，单位 米~%# grasp_depth: 抓取深度,实际抓取点距离物体表面的深度~%# angle: 抓取弧度角 [0, 2π]~%# width: 抓取宽度,单位米~%~%uint16 x~%uint16 y~%float64 z~%float64 grasp_depth~%float64 angle~%float64 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sim_graspModel)))
  "Returns full string definition for message of type 'sim_graspModel"
  (cl:format cl:nil "# x, y: 抓取点的像素坐标 (x, y)~%# z: 抓取点的深度距离，单位 米~%# grasp_depth: 抓取深度,实际抓取点距离物体表面的深度~%# angle: 抓取弧度角 [0, 2π]~%# width: 抓取宽度,单位米~%~%uint16 x~%uint16 y~%float64 z~%float64 grasp_depth~%float64 angle~%float64 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sim_graspModel>))
  (cl:+ 0
     2
     2
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sim_graspModel>))
  "Converts a ROS message object to a list"
  (cl:list 'sim_graspModel
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':grasp_depth (grasp_depth msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':width (width msg))
))
