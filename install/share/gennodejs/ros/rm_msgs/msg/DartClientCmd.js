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

class DartClientCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dart_launch_opening_status = null;
      this.dart_attack_target = null;
      this.target_change_time = null;
      this.first_dart_speed = null;
      this.second_dart_speed = null;
      this.third_dart_speed = null;
      this.fourth_dart_speed = null;
      this.last_dart_launch_time = null;
      this.operate_launch_cmd_time = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dart_launch_opening_status')) {
        this.dart_launch_opening_status = initObj.dart_launch_opening_status
      }
      else {
        this.dart_launch_opening_status = 0;
      }
      if (initObj.hasOwnProperty('dart_attack_target')) {
        this.dart_attack_target = initObj.dart_attack_target
      }
      else {
        this.dart_attack_target = 0;
      }
      if (initObj.hasOwnProperty('target_change_time')) {
        this.target_change_time = initObj.target_change_time
      }
      else {
        this.target_change_time = 0;
      }
      if (initObj.hasOwnProperty('first_dart_speed')) {
        this.first_dart_speed = initObj.first_dart_speed
      }
      else {
        this.first_dart_speed = 0;
      }
      if (initObj.hasOwnProperty('second_dart_speed')) {
        this.second_dart_speed = initObj.second_dart_speed
      }
      else {
        this.second_dart_speed = 0;
      }
      if (initObj.hasOwnProperty('third_dart_speed')) {
        this.third_dart_speed = initObj.third_dart_speed
      }
      else {
        this.third_dart_speed = 0;
      }
      if (initObj.hasOwnProperty('fourth_dart_speed')) {
        this.fourth_dart_speed = initObj.fourth_dart_speed
      }
      else {
        this.fourth_dart_speed = 0;
      }
      if (initObj.hasOwnProperty('last_dart_launch_time')) {
        this.last_dart_launch_time = initObj.last_dart_launch_time
      }
      else {
        this.last_dart_launch_time = 0;
      }
      if (initObj.hasOwnProperty('operate_launch_cmd_time')) {
        this.operate_launch_cmd_time = initObj.operate_launch_cmd_time
      }
      else {
        this.operate_launch_cmd_time = 0;
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
    // Serializes a message object of type DartClientCmd
    // Serialize message field [dart_launch_opening_status]
    bufferOffset = _serializer.uint8(obj.dart_launch_opening_status, buffer, bufferOffset);
    // Serialize message field [dart_attack_target]
    bufferOffset = _serializer.uint8(obj.dart_attack_target, buffer, bufferOffset);
    // Serialize message field [target_change_time]
    bufferOffset = _serializer.uint16(obj.target_change_time, buffer, bufferOffset);
    // Serialize message field [first_dart_speed]
    bufferOffset = _serializer.uint8(obj.first_dart_speed, buffer, bufferOffset);
    // Serialize message field [second_dart_speed]
    bufferOffset = _serializer.uint8(obj.second_dart_speed, buffer, bufferOffset);
    // Serialize message field [third_dart_speed]
    bufferOffset = _serializer.uint8(obj.third_dart_speed, buffer, bufferOffset);
    // Serialize message field [fourth_dart_speed]
    bufferOffset = _serializer.uint8(obj.fourth_dart_speed, buffer, bufferOffset);
    // Serialize message field [last_dart_launch_time]
    bufferOffset = _serializer.uint16(obj.last_dart_launch_time, buffer, bufferOffset);
    // Serialize message field [operate_launch_cmd_time]
    bufferOffset = _serializer.uint16(obj.operate_launch_cmd_time, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DartClientCmd
    let len;
    let data = new DartClientCmd(null);
    // Deserialize message field [dart_launch_opening_status]
    data.dart_launch_opening_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dart_attack_target]
    data.dart_attack_target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_change_time]
    data.target_change_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [first_dart_speed]
    data.first_dart_speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [second_dart_speed]
    data.second_dart_speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [third_dart_speed]
    data.third_dart_speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fourth_dart_speed]
    data.fourth_dart_speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [last_dart_launch_time]
    data.last_dart_launch_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [operate_launch_cmd_time]
    data.operate_launch_cmd_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/DartClientCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '437595b17fc80be6e24b8cf8e3dabe1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 dart_launch_opening_status
    uint8 dart_attack_target
    uint16 target_change_time
    uint8 first_dart_speed
    uint8 second_dart_speed
    uint8 third_dart_speed
    uint8 fourth_dart_speed
    uint16 last_dart_launch_time
    uint16 operate_launch_cmd_time
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DartClientCmd(null);
    if (msg.dart_launch_opening_status !== undefined) {
      resolved.dart_launch_opening_status = msg.dart_launch_opening_status;
    }
    else {
      resolved.dart_launch_opening_status = 0
    }

    if (msg.dart_attack_target !== undefined) {
      resolved.dart_attack_target = msg.dart_attack_target;
    }
    else {
      resolved.dart_attack_target = 0
    }

    if (msg.target_change_time !== undefined) {
      resolved.target_change_time = msg.target_change_time;
    }
    else {
      resolved.target_change_time = 0
    }

    if (msg.first_dart_speed !== undefined) {
      resolved.first_dart_speed = msg.first_dart_speed;
    }
    else {
      resolved.first_dart_speed = 0
    }

    if (msg.second_dart_speed !== undefined) {
      resolved.second_dart_speed = msg.second_dart_speed;
    }
    else {
      resolved.second_dart_speed = 0
    }

    if (msg.third_dart_speed !== undefined) {
      resolved.third_dart_speed = msg.third_dart_speed;
    }
    else {
      resolved.third_dart_speed = 0
    }

    if (msg.fourth_dart_speed !== undefined) {
      resolved.fourth_dart_speed = msg.fourth_dart_speed;
    }
    else {
      resolved.fourth_dart_speed = 0
    }

    if (msg.last_dart_launch_time !== undefined) {
      resolved.last_dart_launch_time = msg.last_dart_launch_time;
    }
    else {
      resolved.last_dart_launch_time = 0
    }

    if (msg.operate_launch_cmd_time !== undefined) {
      resolved.operate_launch_cmd_time = msg.operate_launch_cmd_time;
    }
    else {
      resolved.operate_launch_cmd_time = 0
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

module.exports = DartClientCmd;
