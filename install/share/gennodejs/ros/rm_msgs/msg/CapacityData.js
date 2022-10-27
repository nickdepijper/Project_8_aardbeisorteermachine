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

class CapacityData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_power = null;
      this.buffer_power = null;
      this.limit_power = null;
      this.cap_power = null;
      this.is_online = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_power')) {
        this.chassis_power = initObj.chassis_power
      }
      else {
        this.chassis_power = 0;
      }
      if (initObj.hasOwnProperty('buffer_power')) {
        this.buffer_power = initObj.buffer_power
      }
      else {
        this.buffer_power = 0;
      }
      if (initObj.hasOwnProperty('limit_power')) {
        this.limit_power = initObj.limit_power
      }
      else {
        this.limit_power = 0;
      }
      if (initObj.hasOwnProperty('cap_power')) {
        this.cap_power = initObj.cap_power
      }
      else {
        this.cap_power = 0.0;
      }
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
    // Serializes a message object of type CapacityData
    // Serialize message field [chassis_power]
    bufferOffset = _serializer.uint8(obj.chassis_power, buffer, bufferOffset);
    // Serialize message field [buffer_power]
    bufferOffset = _serializer.uint8(obj.buffer_power, buffer, bufferOffset);
    // Serialize message field [limit_power]
    bufferOffset = _serializer.uint8(obj.limit_power, buffer, bufferOffset);
    // Serialize message field [cap_power]
    bufferOffset = _serializer.float32(obj.cap_power, buffer, bufferOffset);
    // Serialize message field [is_online]
    bufferOffset = _serializer.bool(obj.is_online, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CapacityData
    let len;
    let data = new CapacityData(null);
    // Deserialize message field [chassis_power]
    data.chassis_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [buffer_power]
    data.buffer_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [limit_power]
    data.limit_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cap_power]
    data.cap_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_online]
    data.is_online = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/CapacityData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2ee01400115ac8523ac26598ec5c41b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 chassis_power
    uint8 buffer_power
    uint8 limit_power
    float32 cap_power
    bool is_online
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CapacityData(null);
    if (msg.chassis_power !== undefined) {
      resolved.chassis_power = msg.chassis_power;
    }
    else {
      resolved.chassis_power = 0
    }

    if (msg.buffer_power !== undefined) {
      resolved.buffer_power = msg.buffer_power;
    }
    else {
      resolved.buffer_power = 0
    }

    if (msg.limit_power !== undefined) {
      resolved.limit_power = msg.limit_power;
    }
    else {
      resolved.limit_power = 0
    }

    if (msg.cap_power !== undefined) {
      resolved.cap_power = msg.cap_power;
    }
    else {
      resolved.cap_power = 0.0
    }

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

module.exports = CapacityData;
