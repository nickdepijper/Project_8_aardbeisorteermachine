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

class EngineerCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_step_name = null;
      this.finished_step = null;
      this.total_steps = null;
      this.step_queue_name = null;
      this.symbol = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('current_step_name')) {
        this.current_step_name = initObj.current_step_name
      }
      else {
        this.current_step_name = '';
      }
      if (initObj.hasOwnProperty('finished_step')) {
        this.finished_step = initObj.finished_step
      }
      else {
        this.finished_step = 0;
      }
      if (initObj.hasOwnProperty('total_steps')) {
        this.total_steps = initObj.total_steps
      }
      else {
        this.total_steps = 0;
      }
      if (initObj.hasOwnProperty('step_queue_name')) {
        this.step_queue_name = initObj.step_queue_name
      }
      else {
        this.step_queue_name = '';
      }
      if (initObj.hasOwnProperty('symbol')) {
        this.symbol = initObj.symbol
      }
      else {
        this.symbol = false;
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
    // Serializes a message object of type EngineerCmd
    // Serialize message field [current_step_name]
    bufferOffset = _serializer.string(obj.current_step_name, buffer, bufferOffset);
    // Serialize message field [finished_step]
    bufferOffset = _serializer.uint32(obj.finished_step, buffer, bufferOffset);
    // Serialize message field [total_steps]
    bufferOffset = _serializer.uint32(obj.total_steps, buffer, bufferOffset);
    // Serialize message field [step_queue_name]
    bufferOffset = _serializer.string(obj.step_queue_name, buffer, bufferOffset);
    // Serialize message field [symbol]
    bufferOffset = _serializer.bool(obj.symbol, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EngineerCmd
    let len;
    let data = new EngineerCmd(null);
    // Deserialize message field [current_step_name]
    data.current_step_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [finished_step]
    data.finished_step = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [total_steps]
    data.total_steps = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [step_queue_name]
    data.step_queue_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [symbol]
    data.symbol = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.current_step_name.length;
    length += object.step_queue_name.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/EngineerCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99c50feb8f06ee5ae16f37b16ca0b9f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string current_step_name
    uint32 finished_step
    uint32 total_steps
    
    string step_queue_name
    bool symbol
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EngineerCmd(null);
    if (msg.current_step_name !== undefined) {
      resolved.current_step_name = msg.current_step_name;
    }
    else {
      resolved.current_step_name = ''
    }

    if (msg.finished_step !== undefined) {
      resolved.finished_step = msg.finished_step;
    }
    else {
      resolved.finished_step = 0
    }

    if (msg.total_steps !== undefined) {
      resolved.total_steps = msg.total_steps;
    }
    else {
      resolved.total_steps = 0
    }

    if (msg.step_queue_name !== undefined) {
      resolved.step_queue_name = msg.step_queue_name;
    }
    else {
      resolved.step_queue_name = ''
    }

    if (msg.symbol !== undefined) {
      resolved.symbol = msg.symbol;
    }
    else {
      resolved.symbol = false
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

module.exports = EngineerCmd;
