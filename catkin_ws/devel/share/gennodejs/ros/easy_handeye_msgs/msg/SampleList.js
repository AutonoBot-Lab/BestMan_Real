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

class SampleList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_world_samples = null;
      this.camera_marker_samples = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_world_samples')) {
        this.hand_world_samples = initObj.hand_world_samples
      }
      else {
        this.hand_world_samples = [];
      }
      if (initObj.hasOwnProperty('camera_marker_samples')) {
        this.camera_marker_samples = initObj.camera_marker_samples
      }
      else {
        this.camera_marker_samples = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SampleList
    // Serialize message field [hand_world_samples]
    // Serialize the length for message field [hand_world_samples]
    bufferOffset = _serializer.uint32(obj.hand_world_samples.length, buffer, bufferOffset);
    obj.hand_world_samples.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [camera_marker_samples]
    // Serialize the length for message field [camera_marker_samples]
    bufferOffset = _serializer.uint32(obj.camera_marker_samples.length, buffer, bufferOffset);
    obj.camera_marker_samples.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SampleList
    let len;
    let data = new SampleList(null);
    // Deserialize message field [hand_world_samples]
    // Deserialize array length for message field [hand_world_samples]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hand_world_samples = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hand_world_samples[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [camera_marker_samples]
    // Deserialize array length for message field [camera_marker_samples]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_marker_samples = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_marker_samples[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.hand_world_samples.length;
    length += 56 * object.camera_marker_samples.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'easy_handeye_msgs/SampleList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19e891d084c5a799fdfe97bd1dbbf9c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Transform[] hand_world_samples
    geometry_msgs/Transform[] camera_marker_samples
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new SampleList(null);
    if (msg.hand_world_samples !== undefined) {
      resolved.hand_world_samples = new Array(msg.hand_world_samples.length);
      for (let i = 0; i < resolved.hand_world_samples.length; ++i) {
        resolved.hand_world_samples[i] = geometry_msgs.msg.Transform.Resolve(msg.hand_world_samples[i]);
      }
    }
    else {
      resolved.hand_world_samples = []
    }

    if (msg.camera_marker_samples !== undefined) {
      resolved.camera_marker_samples = new Array(msg.camera_marker_samples.length);
      for (let i = 0; i < resolved.camera_marker_samples.length; ++i) {
        resolved.camera_marker_samples[i] = geometry_msgs.msg.Transform.Resolve(msg.camera_marker_samples[i]);
      }
    }
    else {
      resolved.camera_marker_samples = []
    }

    return resolved;
    }
};

module.exports = SampleList;
