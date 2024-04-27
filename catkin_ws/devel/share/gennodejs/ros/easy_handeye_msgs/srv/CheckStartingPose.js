// Auto-generated. Do not edit!

// (in-package easy_handeye_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let TargetPoseList = require('../msg/TargetPoseList.js');

//-----------------------------------------------------------

class CheckStartingPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckStartingPoseRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckStartingPoseRequest
    let len;
    let data = new CheckStartingPoseRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'easy_handeye_msgs/CheckStartingPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckStartingPoseRequest(null);
    return resolved;
    }
};

class CheckStartingPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_calibrate = null;
      this.target_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('can_calibrate')) {
        this.can_calibrate = initObj.can_calibrate
      }
      else {
        this.can_calibrate = false;
      }
      if (initObj.hasOwnProperty('target_poses')) {
        this.target_poses = initObj.target_poses
      }
      else {
        this.target_poses = new TargetPoseList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckStartingPoseResponse
    // Serialize message field [can_calibrate]
    bufferOffset = _serializer.bool(obj.can_calibrate, buffer, bufferOffset);
    // Serialize message field [target_poses]
    bufferOffset = TargetPoseList.serialize(obj.target_poses, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckStartingPoseResponse
    let len;
    let data = new CheckStartingPoseResponse(null);
    // Deserialize message field [can_calibrate]
    data.can_calibrate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target_poses]
    data.target_poses = TargetPoseList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TargetPoseList.getMessageSize(object.target_poses);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'easy_handeye_msgs/CheckStartingPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e21f20435619eabca85520d8feb5839';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool can_calibrate
    easy_handeye_msgs/TargetPoseList target_poses
    
    ================================================================================
    MSG: easy_handeye_msgs/TargetPoseList
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
    const resolved = new CheckStartingPoseResponse(null);
    if (msg.can_calibrate !== undefined) {
      resolved.can_calibrate = msg.can_calibrate;
    }
    else {
      resolved.can_calibrate = false
    }

    if (msg.target_poses !== undefined) {
      resolved.target_poses = TargetPoseList.Resolve(msg.target_poses)
    }
    else {
      resolved.target_poses = new TargetPoseList()
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckStartingPoseRequest,
  Response: CheckStartingPoseResponse,
  md5sum() { return '2e21f20435619eabca85520d8feb5839'; },
  datatype() { return 'easy_handeye_msgs/CheckStartingPose'; }
};
