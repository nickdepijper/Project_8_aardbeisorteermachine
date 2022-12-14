# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rm_msgs/PowerHeatData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class PowerHeatData(genpy.Message):
  _md5sum = "e95858fa10d84e626e18f0e745f78532"
  _type = "rm_msgs/PowerHeatData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 chassis_volt
float32 chassis_current
float32 chassis_power
uint16 chassis_power_buffer
uint16 shooter_id_1_17_mm_cooling_heat
uint16 shooter_id_2_17_mm_cooling_heat
uint16 shooter_id_1_42_mm_cooling_heat

time stamp
"""
  __slots__ = ['chassis_volt','chassis_current','chassis_power','chassis_power_buffer','shooter_id_1_17_mm_cooling_heat','shooter_id_2_17_mm_cooling_heat','shooter_id_1_42_mm_cooling_heat','stamp']
  _slot_types = ['float32','float32','float32','uint16','uint16','uint16','uint16','time']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       chassis_volt,chassis_current,chassis_power,chassis_power_buffer,shooter_id_1_17_mm_cooling_heat,shooter_id_2_17_mm_cooling_heat,shooter_id_1_42_mm_cooling_heat,stamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PowerHeatData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.chassis_volt is None:
        self.chassis_volt = 0.
      if self.chassis_current is None:
        self.chassis_current = 0.
      if self.chassis_power is None:
        self.chassis_power = 0.
      if self.chassis_power_buffer is None:
        self.chassis_power_buffer = 0
      if self.shooter_id_1_17_mm_cooling_heat is None:
        self.shooter_id_1_17_mm_cooling_heat = 0
      if self.shooter_id_2_17_mm_cooling_heat is None:
        self.shooter_id_2_17_mm_cooling_heat = 0
      if self.shooter_id_1_42_mm_cooling_heat is None:
        self.shooter_id_1_42_mm_cooling_heat = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
    else:
      self.chassis_volt = 0.
      self.chassis_current = 0.
      self.chassis_power = 0.
      self.chassis_power_buffer = 0
      self.shooter_id_1_17_mm_cooling_heat = 0
      self.shooter_id_2_17_mm_cooling_heat = 0
      self.shooter_id_1_42_mm_cooling_heat = 0
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
      buff.write(_get_struct_3f4H2I().pack(_x.chassis_volt, _x.chassis_current, _x.chassis_power, _x.chassis_power_buffer, _x.shooter_id_1_17_mm_cooling_heat, _x.shooter_id_2_17_mm_cooling_heat, _x.shooter_id_1_42_mm_cooling_heat, _x.stamp.secs, _x.stamp.nsecs))
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
      end += 28
      (_x.chassis_volt, _x.chassis_current, _x.chassis_power, _x.chassis_power_buffer, _x.shooter_id_1_17_mm_cooling_heat, _x.shooter_id_2_17_mm_cooling_heat, _x.shooter_id_1_42_mm_cooling_heat, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_3f4H2I().unpack(str[start:end])
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
      buff.write(_get_struct_3f4H2I().pack(_x.chassis_volt, _x.chassis_current, _x.chassis_power, _x.chassis_power_buffer, _x.shooter_id_1_17_mm_cooling_heat, _x.shooter_id_2_17_mm_cooling_heat, _x.shooter_id_1_42_mm_cooling_heat, _x.stamp.secs, _x.stamp.nsecs))
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
      end += 28
      (_x.chassis_volt, _x.chassis_current, _x.chassis_power, _x.chassis_power_buffer, _x.shooter_id_1_17_mm_cooling_heat, _x.shooter_id_2_17_mm_cooling_heat, _x.shooter_id_1_42_mm_cooling_heat, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_3f4H2I().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3f4H2I = None
def _get_struct_3f4H2I():
    global _struct_3f4H2I
    if _struct_3f4H2I is None:
        _struct_3f4H2I = struct.Struct("<3f4H2I")
    return _struct_3f4H2I
