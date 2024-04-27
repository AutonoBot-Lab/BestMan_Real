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


//-----------------------------------------------------------

class SetAlgorithmRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_algorithm = null;
    }
    else {
      if (initObj.hasOwnProperty('new_algorithm')) {
        this.new_algorithm = initObj.new_algorithm
      }
      else {
        this.new_algorithm = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetAlgorithmRequest
    // Serialize message field [new_algorithm]
    bufferOffset = _serializer.string(obj.new_algorithm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetAlgorithmRequest
    let len;
    let data = new SetAlgorithmRequest(null);
    // Deserialize message field [new_algorithm]
    data.new_algorithm = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.new_algorithm);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'easy_handeye_msgs/SetAlgorithmRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcf2c7015a5a5f87cc2ad71d611e1d20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string new_algorithm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetAlgorithmRequest(null);
    if (msg.new_algorithm !== undefined) {
      resolved.new_algorithm = msg.new_algorithm;
    }
    else {
      resolved.new_algorithm = ''
    }

    return resolved;
    }
};

class SetAlgorithmResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetAlgorithmResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetAlgorithmResponse
    let len;
    let data = new SetAlgorithmResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'easy_handeye_msgs/SetAlgorithmResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetAlgorithmResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetAlgorithmRequest,
  Response: SetAlgorithmResponse,
  md5sum() { return 'e997a30f8fd361b5c93f82bb8a67d408'; },
  datatype() { return 'easy_handeye_msgs/SetAlgorithm'; }
};
