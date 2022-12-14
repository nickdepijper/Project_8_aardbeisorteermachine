# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rm_msgs/GimbalCmd.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import std_msgs.msg

class GimbalCmd(genpy.Message):
  _md5sum = "8bed4be5d11eafc7b7a7b054096b4208"
  _type = "rm_msgs/GimbalCmd"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 RATE = 0
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
"""
  # Pseudo-constants
  RATE = 0
  TRACK = 1
  DIRECT = 2

  __slots__ = ['stamp','mode','rate_yaw','rate_pitch','bullet_speed','target_pos']
  _slot_types = ['time','uint8','float64','float64','float64','geometry_msgs/PointStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,mode,rate_yaw,rate_pitch,bullet_speed,target_pos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GimbalCmd, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.mode is None:
        self.mode = 0
      if self.rate_yaw is None:
        self.rate_yaw = 0.
      if self.rate_pitch is None:
        self.rate_pitch = 0.
      if self.bullet_speed is None:
        self.bullet_speed = 0.
      if self.target_pos is None:
        self.target_pos = geometry_msgs.msg.PointStamped()
    else:
      self.stamp = genpy.Time()
      self.mode = 0
      self.rate_yaw = 0.
      self.rate_pitch = 0.
      self.bullet_speed = 0.
      self.target_pos = geometry_msgs.msg.PointStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2IB3d3I().pack(_x.stamp.secs, _x.stamp.nsecs, _x.mode, _x.rate_yaw, _x.rate_pitch, _x.bullet_speed, _x.target_pos.header.seq, _x.target_pos.header.stamp.secs, _x.target_pos.header.stamp.nsecs))
      _x = self.target_pos.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.target_pos.point.x, _x.target_pos.point.y, _x.target_pos.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.target_pos is None:
        self.target_pos = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 45
      (_x.stamp.secs, _x.stamp.nsecs, _x.mode, _x.rate_yaw, _x.rate_pitch, _x.bullet_speed, _x.target_pos.header.seq, _x.target_pos.header.stamp.secs, _x.target_pos.header.stamp.nsecs,) = _get_struct_2IB3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pos.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.target_pos.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.target_pos.point.x, _x.target_pos.point.y, _x.target_pos.point.z,) = _get_struct_3d().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2IB3d3I().pack(_x.stamp.secs, _x.stamp.nsecs, _x.mode, _x.rate_yaw, _x.rate_pitch, _x.bullet_speed, _x.target_pos.header.seq, _x.target_pos.header.stamp.secs, _x.target_pos.header.stamp.nsecs))
      _x = self.target_pos.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.target_pos.point.x, _x.target_pos.point.y, _x.target_pos.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.target_pos is None:
        self.target_pos = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 45
      (_x.stamp.secs, _x.stamp.nsecs, _x.mode, _x.rate_yaw, _x.rate_pitch, _x.bullet_speed, _x.target_pos.header.seq, _x.target_pos.header.stamp.secs, _x.target_pos.header.stamp.nsecs,) = _get_struct_2IB3d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pos.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.target_pos.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.target_pos.point.x, _x.target_pos.point.y, _x.target_pos.point.z,) = _get_struct_3d().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2IB3d3I = None
def _get_struct_2IB3d3I():
    global _struct_2IB3d3I
    if _struct_2IB3d3I is None:
        _struct_2IB3d3I = struct.Struct("<2IB3d3I")
    return _struct_2IB3d3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
