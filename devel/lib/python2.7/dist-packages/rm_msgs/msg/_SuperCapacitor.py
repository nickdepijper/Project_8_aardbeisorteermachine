# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rm_msgs/SuperCapacitor.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class SuperCapacitor(genpy.Message):
  _md5sum = "95558de4e002ee575de7525116e2b0a3"
  _type = "rm_msgs/SuperCapacitor"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 capacity
float32 limit_power
float32 chassis_power
uint16 chassis_power_buffer

time stamp
"""
  __slots__ = ['capacity','limit_power','chassis_power','chassis_power_buffer','stamp']
  _slot_types = ['float32','float32','float32','uint16','time']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       capacity,limit_power,chassis_power,chassis_power_buffer,stamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SuperCapacitor, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.capacity is None:
        self.capacity = 0.
      if self.limit_power is None:
        self.limit_power = 0.
      if self.chassis_power is None:
        self.chassis_power = 0.
      if self.chassis_power_buffer is None:
        self.chassis_power_buffer = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
    else:
      self.capacity = 0.
      self.limit_power = 0.
      self.chassis_power = 0.
      self.chassis_power_buffer = 0
      self.stamp = genpy.Time()

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
      buff.write(_get_struct_3fH2I().pack(_x.capacity, _x.limit_power, _x.chassis_power, _x.chassis_power_buffer, _x.stamp.secs, _x.stamp.nsecs))
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
      end = 0
      _x = self
      start = end
      end += 22
      (_x.capacity, _x.limit_power, _x.chassis_power, _x.chassis_power_buffer, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_3fH2I().unpack(str[start:end])
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
      buff.write(_get_struct_3fH2I().pack(_x.capacity, _x.limit_power, _x.chassis_power, _x.chassis_power_buffer, _x.stamp.secs, _x.stamp.nsecs))
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
      end = 0
      _x = self
      start = end
      end += 22
      (_x.capacity, _x.limit_power, _x.chassis_power, _x.chassis_power_buffer, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_3fH2I().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fH2I = None
def _get_struct_3fH2I():
    global _struct_3fH2I
    if _struct_3fH2I is None:
        _struct_3fH2I = struct.Struct("<3fH2I")
    return _struct_3fH2I
