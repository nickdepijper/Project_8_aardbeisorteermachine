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

class SuperCapacitor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.capacity = null;
      this.limit_power = null;
      this.chassis_power = null;
      this.chassis_power_buffer = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = 0.0;
      }
      if (initObj.hasOwnProperty('limit_power')) {
        this.limit_power = initObj.limit_power
      }
      else {
        this.limit_power = 0.0;
      }
      if (initObj.hasOwnProperty('chassis_power')) {
        this.chassis_power = initObj.chassis_power
      }
      else {
        this.chassis_power = 0.0;
      }
      if (initObj.hasOwnProperty('chassis_power_buffer')) {
        this.chassis_power_buffer = initObj.chassis_power_buffer
      }
      else {
        this.chassis_power_buffer = 0;
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
    // Serializes a message object of type SuperCapacitor
    // Serialize message field [capacity]
    bufferOffset = _serializer.float32(obj.capacity, buffer, bufferOffset);
    // Serialize message field [limit_power]
    bufferOffset = _serializer.float32(obj.limit_power, buffer, bufferOffset);
    // Serialize message field [chassis_power]
    bufferOffset = _serializer.float32(obj.chassis_power, buffer, bufferOffset);
    // Serialize message field [chassis_power_buffer]
    bufferOffset = _serializer.uint16(obj.chassis_power_buffer, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuperCapacitor
    let len;
    let data = new SuperCapacitor(null);
    // Deserialize message field [capacity]
    data.capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [limit_power]
    data.limit_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chassis_power]
    data.chassis_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chassis_power_buffer]
    data.chassis_power_buffer = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/SuperCapacitor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95558de4e002ee575de7525116e2b0a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 capacity
    float32 limit_power
    float32 chassis_power
    uint16 chassis_power_buffer
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuperCapacitor(null);
    if (msg.capacity !== undefined) {
      resolved.capacity = msg.capacity;
    }
    else {
      resolved.capacity = 0.0
    }

    if (msg.limit_power !== undefined) {
      resolved.limit_power = msg.limit_power;
    }
    else {
      resolved.limit_power = 0.0
    }

    if (msg.chassis_power !== undefined) {
      resolved.chassis_power = msg.chassis_power;
    }
    else {
      resolved.chassis_power = 0.0
    }

    if (msg.chassis_power_buffer !== undefined) {
      resolved.chassis_power_buffer = msg.chassis_power_buffer;
    }
    else {
      resolved.chassis_power_buffer = 0
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

module.exports = SuperCapacitor;
