# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rm_msgs/MovingAverageData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class MovingAverageData(genpy.Message):
  _md5sum = "12bd9292dde1a0c07797d8236d7c8fa2"
  _type = "rm_msgs/MovingAverageData"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

float64 real_pos_x
float64 real_pos_y
float64 real_pos_z
float64 real_vel_x
float64 real_vel_y
float64 real_vel_z

float64 filtered_pos_x
float64 filtered_pos_y
float64 filtered_pos_z
float64 filtered_vel_x
float64 filtered_vel_y
float64 filtered_vel_z
float64 filtered_center_x
float64 filtered_center_y
float64 filtered_center_z

float64 real_gyro_vel
float64 filtered_gyro_vel

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
"""
  __slots__ = ['header','real_pos_x','real_pos_y','real_pos_z','real_vel_x','real_vel_y','real_vel_z','filtered_pos_x','filtered_pos_y','filtered_pos_z','filtered_vel_x','filtered_vel_y','filtered_vel_z','filtered_center_x','filtered_center_y','filtered_center_z','real_gyro_vel','filtered_gyro_vel']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,real_pos_x,real_pos_y,real_pos_z,real_vel_x,real_vel_y,real_vel_z,filtered_pos_x,filtered_pos_y,filtered_pos_z,filtered_vel_x,filtered_vel_y,filtered_vel_z,filtered_center_x,filtered_center_y,filtered_center_z,real_gyro_vel,filtered_gyro_vel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MovingAverageData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.real_pos_x is None:
        self.real_pos_x = 0.
      if self.real_pos_y is None:
        self.real_pos_y = 0.
      if self.real_pos_z is None:
        self.real_pos_z = 0.
      if self.real_vel_x is None:
        self.real_vel_x = 0.
      if self.real_vel_y is None:
        self.real_vel_y = 0.
      if self.real_vel_z is None:
        self.real_vel_z = 0.
      if self.filtered_pos_x is None:
        self.filtered_pos_x = 0.
      if self.filtered_pos_y is None:
        self.filtered_pos_y = 0.
      if self.filtered_pos_z is None:
        self.filtered_pos_z = 0.
      if self.filtered_vel_x is None:
        self.filtered_vel_x = 0.
      if self.filtered_vel_y is None:
        self.filtered_vel_y = 0.
      if self.filtered_vel_z is None:
        self.filtered_vel_z = 0.
      if self.filtered_center_x is None:
        self.filtered_center_x = 0.
      if self.filtered_center_y is None:
        self.filtered_center_y = 0.
      if self.filtered_center_z is None:
        self.filtered_center_z = 0.
      if self.real_gyro_vel is None:
        self.real_gyro_vel = 0.
      if self.filtered_gyro_vel is None:
        self.filtered_gyro_vel = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.real_pos_x = 0.
      self.real_pos_y = 0.
      self.real_pos_z = 0.
      self.real_vel_x = 0.
      self.real_vel_y = 0.
      self.real_vel_z = 0.
      self.filtered_pos_x = 0.
      self.filtered_pos_y = 0.
      self.filtered_pos_z = 0.
      self.filtered_vel_x = 0.
      self.filtered_vel_y = 0.
      self.filtered_vel_z = 0.
      self.filtered_center_x = 0.
      self.filtered_center_y = 0.
      self.filtered_center_z = 0.
      self.real_gyro_vel = 0.
      self.filtered_gyro_vel = 0.

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_17d().pack(_x.real_pos_x, _x.real_pos_y, _x.real_pos_z, _x.real_vel_x, _x.real_vel_y, _x.real_vel_z, _x.filtered_pos_x, _x.filtered_pos_y, _x.filtered_pos_z, _x.filtered_vel_x, _x.filtered_vel_y, _x.filtered_vel_z, _x.filtered_center_x, _x.filtered_center_y, _x.filtered_center_z, _x.real_gyro_vel, _x.filtered_gyro_vel))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 136
      (_x.real_pos_x, _x.real_pos_y, _x.real_pos_z, _x.real_vel_x, _x.real_vel_y, _x.real_vel_z, _x.filtered_pos_x, _x.filtered_pos_y, _x.filtered_pos_z, _x.filtered_vel_x, _x.filtered_vel_y, _x.filtered_vel_z, _x.filtered_center_x, _x.filtered_center_y, _x.filtered_center_z, _x.real_gyro_vel, _x.filtered_gyro_vel,) = _get_struct_17d().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_17d().pack(_x.real_pos_x, _x.real_pos_y, _x.real_pos_z, _x.real_vel_x, _x.real_vel_y, _x.real_vel_z, _x.filtered_pos_x, _x.filtered_pos_y, _x.filtered_pos_z, _x.filtered_vel_x, _x.filtered_vel_y, _x.filtered_vel_z, _x.filtered_center_x, _x.filtered_center_y, _x.filtered_center_z, _x.real_gyro_vel, _x.filtered_gyro_vel))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 136
      (_x.real_pos_x, _x.real_pos_y, _x.real_pos_z, _x.real_vel_x, _x.real_vel_y, _x.real_vel_z, _x.filtered_pos_x, _x.filtered_pos_y, _x.filtered_pos_z, _x.filtered_vel_x, _x.filtered_vel_y, _x.filtered_vel_z, _x.filtered_center_x, _x.filtered_center_y, _x.filtered_center_z, _x.real_gyro_vel, _x.filtered_gyro_vel,) = _get_struct_17d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_17d = None
def _get_struct_17d():
    global _struct_17d
    if _struct_17d is None:
        _struct_17d = struct.Struct("<17d")
    return _struct_17d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
