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

class BulletRemaining {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bullet_remaining_num_17_mm = null;
      this.bullet_remaining_num_42_mm = null;
      this.coin_remaining_num = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('bullet_remaining_num_17_mm')) {
        this.bullet_remaining_num_17_mm = initObj.bullet_remaining_num_17_mm
      }
      else {
        this.bullet_remaining_num_17_mm = 0;
      }
      if (initObj.hasOwnProperty('bullet_remaining_num_42_mm')) {
        this.bullet_remaining_num_42_mm = initObj.bullet_remaining_num_42_mm
      }
      else {
        this.bullet_remaining_num_42_mm = 0;
      }
      if (initObj.hasOwnProperty('coin_remaining_num')) {
        this.coin_remaining_num = initObj.coin_remaining_num
      }
      else {
        this.coin_remaining_num = 0;
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
    // Serializes a message object of type BulletRemaining
    // Serialize message field [bullet_remaining_num_17_mm]
    bufferOffset = _serializer.uint16(obj.bullet_remaining_num_17_mm, buffer, bufferOffset);
    // Serialize message field [bullet_remaining_num_42_mm]
    bufferOffset = _serializer.uint16(obj.bullet_remaining_num_42_mm, buffer, bufferOffset);
    // Serialize message field [coin_remaining_num]
    bufferOffset = _serializer.uint16(obj.coin_remaining_num, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BulletRemaining
    let len;
    let data = new BulletRemaining(null);
    // Deserialize message field [bullet_remaining_num_17_mm]
    data.bullet_remaining_num_17_mm = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [bullet_remaining_num_42_mm]
    data.bullet_remaining_num_42_mm = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [coin_remaining_num]
    data.coin_remaining_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/BulletRemaining';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43e123a32cc9ba99f4b185dfa52ac9e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 bullet_remaining_num_17_mm
    uint16 bullet_remaining_num_42_mm
    uint16 coin_remaining_num
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BulletRemaining(null);
    if (msg.bullet_remaining_num_17_mm !== undefined) {
      resolved.bullet_remaining_num_17_mm = msg.bullet_remaining_num_17_mm;
    }
    else {
      resolved.bullet_remaining_num_17_mm = 0
    }

    if (msg.bullet_remaining_num_42_mm !== undefined) {
      resolved.bullet_remaining_num_42_mm = msg.bullet_remaining_num_42_mm;
    }
    else {
      resolved.bullet_remaining_num_42_mm = 0
    }

    if (msg.coin_remaining_num !== undefined) {
      resolved.coin_remaining_num = msg.coin_remaining_num;
    }
    else {
      resolved.coin_remaining_num = 0
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

module.exports = BulletRemaining;
