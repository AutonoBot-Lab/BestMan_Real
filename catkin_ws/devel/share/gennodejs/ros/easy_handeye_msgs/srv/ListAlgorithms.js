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

class ListAlgorithmsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListAlgorithmsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListAlgorithmsRequest
    let len;
    let data = new ListAlgorithmsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'easy_handeye_msgs/ListAlgorithmsRequest';
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
    const resolved = new ListAlgorithmsRequest(null);
    return resolved;
    }
};

class ListAlgorithmsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.algorithms = null;
      this.current_algorithm = null;
    }
    else {
      if (initObj.hasOwnProperty('algorithms')) {
        this.algorithms = initObj.algorithms
      }
      else {
        this.algorithms = [];
      }
      if (initObj.hasOwnProperty('current_algorithm')) {
        this.current_algorithm = initObj.current_algorithm
      }
      else {
        this.current_algorithm = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListAlgorithmsResponse
    // Serialize message field [algorithms]
    bufferOffset = _arraySerializer.string(obj.algorithms, buffer, bufferOffset, null);
    // Serialize message field [current_algorithm]
    bufferOffset = _serializer.string(obj.current_algorithm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListAlgorithmsResponse
    let len;
    let data = new ListAlgorithmsResponse(null);
    // Deserialize message field [algorithms]
    data.algorithms = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_algorithm]
    data.current_algorithm = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.algorithms.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.current_algorithm);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'easy_handeye_msgs/ListAlgorithmsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf0f5784afc7ca3b01a2029aa7874966';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] algorithms
    string current_algorithm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListAlgorithmsResponse(null);
    if (msg.algorithms !== undefined) {
      resolved.algorithms = msg.algorithms;
    }
    else {
      resolved.algorithms = []
    }

    if (msg.current_algorithm !== undefined) {
      resolved.current_algorithm = msg.current_algorithm;
    }
    else {
      resolved.current_algorithm = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ListAlgorithmsRequest,
  Response: ListAlgorithmsResponse,
  md5sum() { return 'cf0f5784afc7ca3b01a2029aa7874966'; },
  datatype() { return 'easy_handeye_msgs/ListAlgorithms'; }
};
