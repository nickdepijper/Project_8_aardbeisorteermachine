// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BalanceState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.alpha = null;
      this.alpha_dot = null;
      this.vel = null;
      this.theta_dot = null;
      this.control_1 = null;
      this.control_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = 0.0;
      }
      if (initObj.hasOwnProperty('alpha_dot')) {
        this.alpha_dot = initObj.alpha_dot
      }
      else {
        this.alpha_dot = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('theta_dot')) {
        this.theta_dot = initObj.theta_dot
      }
      else {
        this.theta_dot = 0.0;
      }
      if (initObj.hasOwnProperty('control_1')) {
        this.control_1 = initObj.control_1
      }
      else {
        this.control_1 = 0.0;
      }
      if (initObj.hasOwnProperty('control_2')) {
        this.control_2 = initObj.control_2
      }
      else {
        this.control_2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BalanceState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.float64(obj.alpha, buffer, bufferOffset);
    // Serialize message field [alpha_dot]
    bufferOffset = _serializer.float64(obj.alpha_dot, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [theta_dot]
    bufferOffset = _serializer.float64(obj.theta_dot, buffer, bufferOffset);
    // Serialize message field [control_1]
    bufferOffset = _serializer.float64(obj.control_1, buffer, bufferOffset);
    // Serialize message field [control_2]
    bufferOffset = _serializer.float64(obj.control_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BalanceState
    let len;
    let data = new BalanceState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alpha_dot]
    data.alpha_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_dot]
    data.theta_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [control_1]
    data.control_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [control_2]
    data.control_2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/BalanceState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54fad2a9c502654a43a195c5bf42346b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 alpha
    float64 alpha_dot
    float64 vel
    float64 theta_dot
    float64 control_1
    float64 control_2
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BalanceState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = 0.0
    }

    if (msg.alpha_dot !== undefined) {
      resolved.alpha_dot = msg.alpha_dot;
    }
    else {
      resolved.alpha_dot = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.theta_dot !== undefined) {
      resolved.theta_dot = msg.theta_dot;
    }
    else {
      resolved.theta_dot = 0.0
    }

    if (msg.control_1 !== undefined) {
      resolved.control_1 = msg.control_1;
    }
    else {
      resolved.control_1 = 0.0
    }

    if (msg.control_2 !== undefined) {
      resolved.control_2 = msg.control_2;
    }
    else {
      resolved.control_2 = 0.0
    }

    return resolved;
    }
};

module.exports = BalanceState;
