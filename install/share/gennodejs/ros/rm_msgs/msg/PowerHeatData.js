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

class PowerHeatData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_volt = null;
      this.chassis_current = null;
      this.chassis_power = null;
      this.chassis_power_buffer = null;
      this.shooter_id_1_17_mm_cooling_heat = null;
      this.shooter_id_2_17_mm_cooling_heat = null;
      this.shooter_id_1_42_mm_cooling_heat = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_volt')) {
        this.chassis_volt = initObj.chassis_volt
      }
      else {
        this.chassis_volt = 0.0;
      }
      if (initObj.hasOwnProperty('chassis_current')) {
        this.chassis_current = initObj.chassis_current
      }
      else {
        this.chassis_current = 0.0;
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
      if (initObj.hasOwnProperty('shooter_id_1_17_mm_cooling_heat')) {
        this.shooter_id_1_17_mm_cooling_heat = initObj.shooter_id_1_17_mm_cooling_heat
      }
      else {
        this.shooter_id_1_17_mm_cooling_heat = 0;
      }
      if (initObj.hasOwnProperty('shooter_id_2_17_mm_cooling_heat')) {
        this.shooter_id_2_17_mm_cooling_heat = initObj.shooter_id_2_17_mm_cooling_heat
      }
      else {
        this.shooter_id_2_17_mm_cooling_heat = 0;
      }
      if (initObj.hasOwnProperty('shooter_id_1_42_mm_cooling_heat')) {
        this.shooter_id_1_42_mm_cooling_heat = initObj.shooter_id_1_42_mm_cooling_heat
      }
      else {
        this.shooter_id_1_42_mm_cooling_heat = 0;
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
    // Serializes a message object of type PowerHeatData
    // Serialize message field [chassis_volt]
    bufferOffset = _serializer.float32(obj.chassis_volt, buffer, bufferOffset);
    // Serialize message field [chassis_current]
    bufferOffset = _serializer.float32(obj.chassis_current, buffer, bufferOffset);
    // Serialize message field [chassis_power]
    bufferOffset = _serializer.float32(obj.chassis_power, buffer, bufferOffset);
    // Serialize message field [chassis_power_buffer]
    bufferOffset = _serializer.uint16(obj.chassis_power_buffer, buffer, bufferOffset);
    // Serialize message field [shooter_id_1_17_mm_cooling_heat]
    bufferOffset = _serializer.uint16(obj.shooter_id_1_17_mm_cooling_heat, buffer, bufferOffset);
    // Serialize message field [shooter_id_2_17_mm_cooling_heat]
    bufferOffset = _serializer.uint16(obj.shooter_id_2_17_mm_cooling_heat, buffer, bufferOffset);
    // Serialize message field [shooter_id_1_42_mm_cooling_heat]
    bufferOffset = _serializer.uint16(obj.shooter_id_1_42_mm_cooling_heat, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerHeatData
    let len;
    let data = new PowerHeatData(null);
    // Deserialize message field [chassis_volt]
    data.chassis_volt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chassis_current]
    data.chassis_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chassis_power]
    data.chassis_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chassis_power_buffer]
    data.chassis_power_buffer = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [shooter_id_1_17_mm_cooling_heat]
    data.shooter_id_1_17_mm_cooling_heat = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [shooter_id_2_17_mm_cooling_heat]
    data.shooter_id_2_17_mm_cooling_heat = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [shooter_id_1_42_mm_cooling_heat]
    data.shooter_id_1_42_mm_cooling_heat = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PowerHeatData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e95858fa10d84e626e18f0e745f78532';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 chassis_volt
    float32 chassis_current
    float32 chassis_power
    uint16 chassis_power_buffer
    uint16 shooter_id_1_17_mm_cooling_heat
    uint16 shooter_id_2_17_mm_cooling_heat
    uint16 shooter_id_1_42_mm_cooling_heat
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerHeatData(null);
    if (msg.chassis_volt !== undefined) {
      resolved.chassis_volt = msg.chassis_volt;
    }
    else {
      resolved.chassis_volt = 0.0
    }

    if (msg.chassis_current !== undefined) {
      resolved.chassis_current = msg.chassis_current;
    }
    else {
      resolved.chassis_current = 0.0
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

    if (msg.shooter_id_1_17_mm_cooling_heat !== undefined) {
      resolved.shooter_id_1_17_mm_cooling_heat = msg.shooter_id_1_17_mm_cooling_heat;
    }
    else {
      resolved.shooter_id_1_17_mm_cooling_heat = 0
    }

    if (msg.shooter_id_2_17_mm_cooling_heat !== undefined) {
      resolved.shooter_id_2_17_mm_cooling_heat = msg.shooter_id_2_17_mm_cooling_heat;
    }
    else {
      resolved.shooter_id_2_17_mm_cooling_heat = 0
    }

    if (msg.shooter_id_1_42_mm_cooling_heat !== undefined) {
      resolved.shooter_id_1_42_mm_cooling_heat = msg.shooter_id_1_42_mm_cooling_heat;
    }
    else {
      resolved.shooter_id_1_42_mm_cooling_heat = 0
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

module.exports = PowerHeatData;
