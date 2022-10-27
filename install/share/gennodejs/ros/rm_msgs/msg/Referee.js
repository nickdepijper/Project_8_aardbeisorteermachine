// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Referee {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_online = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('is_online')) {
        this.is_online = initObj.is_online
      }
      else {
        this.is_online = false;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Referee
    // Serialize message field [is_online]
    bufferOffset = _serializer.bool(obj.is_online, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Referee
    let len;
    let data = new Referee(null);
    // Deserialize message field [is_online]
    data.is_online = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Referee';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '407bdd83433e865cfa74911de122ad5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_online
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Referee(null);
    if (msg.is_online !== undefined) {
      resolved.is_online = msg.is_online;
    }
    else {
      resolved.is_online = false
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = Referee;
