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

class RfidStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rfid_status = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('rfid_status')) {
        this.rfid_status = initObj.rfid_status
      }
      else {
        this.rfid_status = 0;
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
    // Serializes a message object of type RfidStatus
    // Serialize message field [rfid_status]
    bufferOffset = _serializer.uint32(obj.rfid_status, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfidStatus
    let len;
    let data = new RfidStatus(null);
    // Deserialize message field [rfid_status]
    data.rfid_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RfidStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '778ccf0329dbf9adf1847960b71a0e1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 rfid_status
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RfidStatus(null);
    if (msg.rfid_status !== undefined) {
      resolved.rfid_status = msg.rfid_status;
    }
    else {
      resolved.rfid_status = 0
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

module.exports = RfidStatus;
