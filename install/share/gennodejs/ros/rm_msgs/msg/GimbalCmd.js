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

class GimbalCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.mode = null;
      this.rate_yaw = null;
      this.rate_pitch = null;
      this.bullet_speed = null;
      this.target_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('rate_yaw')) {
        this.rate_yaw = initObj.rate_yaw
      }
      else {
        this.rate_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('rate_pitch')) {
        this.rate_pitch = initObj.rate_pitch
      }
      else {
        this.rate_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('bullet_speed')) {
        this.bullet_speed = initObj.bullet_speed
      }
      else {
        this.bullet_speed = 0.0;
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = new geometry_msgs.msg.PointStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GimbalCmd
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [rate_yaw]
    bufferOffset = _serializer.float64(obj.rate_yaw, buffer, bufferOffset);
    // Serialize message field [rate_pitch]
    bufferOffset = _serializer.float64(obj.rate_pitch, buffer, bufferOffset);
    // Serialize message field [bullet_speed]
    bufferOffset = _serializer.float64(obj.bullet_speed, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.target_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GimbalCmd
    let len;
    let data = new GimbalCmd(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rate_yaw]
    data.rate_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rate_pitch]
    data.rate_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bullet_speed]
    data.bullet_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.target_pos);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/GimbalCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bed4be5d11eafc7b7a7b054096b4208';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RATE = 0
    uint8 TRACK = 1
    uint8 DIRECT = 2
    
    time stamp
    uint8 mode
    
    # RATE
    float64 rate_yaw
    float64 rate_pitch
    
    # TRACK/DIRECT
    float64 bullet_speed
    geometry_msgs/PointStamped target_pos
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new GimbalCmd(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.rate_yaw !== undefined) {
      resolved.rate_yaw = msg.rate_yaw;
    }
    else {
      resolved.rate_yaw = 0.0
    }

    if (msg.rate_pitch !== undefined) {
      resolved.rate_pitch = msg.rate_pitch;
    }
    else {
      resolved.rate_pitch = 0.0
    }

    if (msg.bullet_speed !== undefined) {
      resolved.bullet_speed = msg.bullet_speed;
    }
    else {
      resolved.bullet_speed = 0.0
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = geometry_msgs.msg.PointStamped.Resolve(msg.target_pos)
    }
    else {
      resolved.target_pos = new geometry_msgs.msg.PointStamped()
    }

    return resolved;
    }
};

// Constants for message
GimbalCmd.Constants = {
  RATE: 0,
  TRACK: 1,
  DIRECT: 2,
}

module.exports = GimbalCmd;
