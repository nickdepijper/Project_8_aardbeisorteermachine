// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ChassisCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.accel = null;
      this.power_limit = null;
      this.follow_source_frame = null;
      this.command_source_frame = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('power_limit')) {
        this.power_limit = initObj.power_limit
      }
      else {
        this.power_limit = 0.0;
      }
      if (initObj.hasOwnProperty('follow_source_frame')) {
        this.follow_source_frame = initObj.follow_source_frame
      }
      else {
        this.follow_source_frame = '';
      }
      if (initObj.hasOwnProperty('command_source_frame')) {
        this.command_source_frame = initObj.command_source_frame
      }
      else {
        this.command_source_frame = '';
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
    // Serializes a message object of type ChassisCmd
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [power_limit]
    bufferOffset = _serializer.float64(obj.power_limit, buffer, bufferOffset);
    // Serialize message field [follow_source_frame]
    bufferOffset = _serializer.string(obj.follow_source_frame, buffer, bufferOffset);
    // Serialize message field [command_source_frame]
    bufferOffset = _serializer.string(obj.command_source_frame, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisCmd
    let len;
    let data = new ChassisCmd(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [power_limit]
    data.power_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [follow_source_frame]
    data.follow_source_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_source_frame]
    data.command_source_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.follow_source_frame.length;
    length += object.command_source_frame.length;
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ChassisCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6328cffed58da8d33a54a5d480fb65fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RAW = 0
    uint8 FOLLOW = 1
    uint8 GYRO = 2
    uint8 TWIST = 3
    
    uint8 mode
    geometry_msgs/Accel accel
    float64 power_limit
    string follow_source_frame
    string command_source_frame
    time stamp
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisCmd(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Accel.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Accel()
    }

    if (msg.power_limit !== undefined) {
      resolved.power_limit = msg.power_limit;
    }
    else {
      resolved.power_limit = 0.0
    }

    if (msg.follow_source_frame !== undefined) {
      resolved.follow_source_frame = msg.follow_source_frame;
    }
    else {
      resolved.follow_source_frame = ''
    }

    if (msg.command_source_frame !== undefined) {
      resolved.command_source_frame = msg.command_source_frame;
    }
    else {
      resolved.command_source_frame = ''
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

// Constants for message
ChassisCmd.Constants = {
  RAW: 0,
  FOLLOW: 1,
  GYRO: 2,
  TWIST: 3,
}

module.exports = ChassisCmd;
