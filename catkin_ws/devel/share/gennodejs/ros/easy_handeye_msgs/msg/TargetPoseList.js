// Auto-generated. Do not edit!

// (in-package easy_handeye_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TargetPoseList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.home_pose = null;
      this.target_poses = null;
      this.current_target_pose_index = null;
    }
    else {
      if (initObj.hasOwnProperty('home_pose')) {
        this.home_pose = initObj.home_pose
      }
      else {
        this.home_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('target_poses')) {
        this.target_poses = initObj.target_poses
      }
      else {
        this.target_poses = [];
      }
      if (initObj.hasOwnProperty('current_target_pose_index')) {
        this.current_target_pose_index = initObj.current_target_pose_index
      }
      else {
        this.current_target_pose_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TargetPoseList
    // Serialize message field [home_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.home_pose, buffer, bufferOffset);
    // Serialize message field [target_poses]
    // Serialize the length for message field [target_poses]
    bufferOffset = _serializer.uint32(obj.target_poses.length, buffer, bufferOffset);
    obj.target_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [current_target_pose_index]
    bufferOffset = _serializer.int64(obj.current_target_pose_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TargetPoseList
    let len;
    let data = new TargetPoseList(null);
    // Deserialize message field [home_pose]
    data.home_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_poses]
    // Deserialize array length for message field [target_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_poses[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [current_target_pose_index]
    data.current_target_pose_index = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.home_pose);
    object.target_poses.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'easy_handeye_msgs/TargetPoseList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c343b905aff6f17d2d7f55ae6eecc3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped home_pose
    geometry_msgs/PoseStamped[] target_poses
    int64 current_target_pose_index
    # TODO: add joint poses (which are what will actually be used)
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TargetPoseList(null);
    if (msg.home_pose !== undefined) {
      resolved.home_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.home_pose)
    }
    else {
      resolved.home_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.target_poses !== undefined) {
      resolved.target_poses = new Array(msg.target_poses.length);
      for (let i = 0; i < resolved.target_poses.length; ++i) {
        resolved.target_poses[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.target_poses[i]);
      }
    }
    else {
      resolved.target_poses = []
    }

    if (msg.current_target_pose_index !== undefined) {
      resolved.current_target_pose_index = msg.current_target_pose_index;
    }
    else {
      resolved.current_target_pose_index = 0
    }

    return resolved;
    }
};

module.exports = TargetPoseList;
