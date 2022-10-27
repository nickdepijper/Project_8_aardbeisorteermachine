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

class DartRemainingTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dart_remaining_time = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dart_remaining_time')) {
        this.dart_remaining_time = initObj.dart_remaining_time
      }
      else {
        this.dart_remaining_time = 0;
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
    // Serializes a message object of type DartRemainingTime
    // Serialize message field [dart_remaining_time]
    bufferOffset = _serializer.uint8(obj.dart_remaining_time, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DartRemainingTime
    let len;
    let data = new DartRemainingTime(null);
    // Deserialize message field [dart_remaining_time]
    data.dart_remaining_time = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/DartRemainingTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a87dddfc4b0db93aa520d66f9e7e8df5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 dart_remaining_time
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DartRemainingTime(null);
    if (msg.dart_remaining_time !== undefined) {
      resolved.dart_remaining_time = msg.dart_remaining_time;
    }
    else {
      resolved.dart_remaining_time = 0
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

module.exports = DartRemainingTime;
