// Generated by gencpp from file rm_msgs/MovingAverageData.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_MOVINGAVERAGEDATA_H
#define RM_MSGS_MESSAGE_MOVINGAVERAGEDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace rm_msgs
{
template <class ContainerAllocator>
struct MovingAverageData_
{
  typedef MovingAverageData_<ContainerAllocator> Type;

  MovingAverageData_()
    : header()
    , real_pos_x(0.0)
    , real_pos_y(0.0)
    , real_pos_z(0.0)
    , real_vel_x(0.0)
    , real_vel_y(0.0)
    , real_vel_z(0.0)
    , filtered_pos_x(0.0)
    , filtered_pos_y(0.0)
    , filtered_pos_z(0.0)
    , filtered_vel_x(0.0)
    , filtered_vel_y(0.0)
    , filtered_vel_z(0.0)
    , filtered_center_x(0.0)
    , filtered_center_y(0.0)
    , filtered_center_z(0.0)
    , real_gyro_vel(0.0)
    , filtered_gyro_vel(0.0)  {
    }
  MovingAverageData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , real_pos_x(0.0)
    , real_pos_y(0.0)
    , real_pos_z(0.0)
    , real_vel_x(0.0)
    , real_vel_y(0.0)
    , real_vel_z(0.0)
    , filtered_pos_x(0.0)
    , filtered_pos_y(0.0)
    , filtered_pos_z(0.0)
    , filtered_vel_x(0.0)
    , filtered_vel_y(0.0)
    , filtered_vel_z(0.0)
    , filtered_center_x(0.0)
    , filtered_center_y(0.0)
    , filtered_center_z(0.0)
    , real_gyro_vel(0.0)
    , filtered_gyro_vel(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _real_pos_x_type;
  _real_pos_x_type real_pos_x;

   typedef double _real_pos_y_type;
  _real_pos_y_type real_pos_y;

   typedef double _real_pos_z_type;
  _real_pos_z_type real_pos_z;

   typedef double _real_vel_x_type;
  _real_vel_x_type real_vel_x;

   typedef double _real_vel_y_type;
  _real_vel_y_type real_vel_y;

   typedef double _real_vel_z_type;
  _real_vel_z_type real_vel_z;

   typedef double _filtered_pos_x_type;
  _filtered_pos_x_type filtered_pos_x;

   typedef double _filtered_pos_y_type;
  _filtered_pos_y_type filtered_pos_y;

   typedef double _filtered_pos_z_type;
  _filtered_pos_z_type filtered_pos_z;

   typedef double _filtered_vel_x_type;
  _filtered_vel_x_type filtered_vel_x;

   typedef double _filtered_vel_y_type;
  _filtered_vel_y_type filtered_vel_y;

   typedef double _filtered_vel_z_type;
  _filtered_vel_z_type filtered_vel_z;

   typedef double _filtered_center_x_type;
  _filtered_center_x_type filtered_center_x;

   typedef double _filtered_center_y_type;
  _filtered_center_y_type filtered_center_y;

   typedef double _filtered_center_z_type;
  _filtered_center_z_type filtered_center_z;

   typedef double _real_gyro_vel_type;
  _real_gyro_vel_type real_gyro_vel;

   typedef double _filtered_gyro_vel_type;
  _filtered_gyro_vel_type filtered_gyro_vel;





  typedef boost::shared_ptr< ::rm_msgs::MovingAverageData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_msgs::MovingAverageData_<ContainerAllocator> const> ConstPtr;

}; // struct MovingAverageData_

typedef ::rm_msgs::MovingAverageData_<std::allocator<void> > MovingAverageData;

typedef boost::shared_ptr< ::rm_msgs::MovingAverageData > MovingAverageDataPtr;
typedef boost::shared_ptr< ::rm_msgs::MovingAverageData const> MovingAverageDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_msgs::MovingAverageData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_msgs::MovingAverageData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_msgs::MovingAverageData_<ContainerAllocator1> & lhs, const ::rm_msgs::MovingAverageData_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.real_pos_x == rhs.real_pos_x &&
    lhs.real_pos_y == rhs.real_pos_y &&
    lhs.real_pos_z == rhs.real_pos_z &&
    lhs.real_vel_x == rhs.real_vel_x &&
    lhs.real_vel_y == rhs.real_vel_y &&
    lhs.real_vel_z == rhs.real_vel_z &&
    lhs.filtered_pos_x == rhs.filtered_pos_x &&
    lhs.filtered_pos_y == rhs.filtered_pos_y &&
    lhs.filtered_pos_z == rhs.filtered_pos_z &&
    lhs.filtered_vel_x == rhs.filtered_vel_x &&
    lhs.filtered_vel_y == rhs.filtered_vel_y &&
    lhs.filtered_vel_z == rhs.filtered_vel_z &&
    lhs.filtered_center_x == rhs.filtered_center_x &&
    lhs.filtered_center_y == rhs.filtered_center_y &&
    lhs.filtered_center_z == rhs.filtered_center_z &&
    lhs.real_gyro_vel == rhs.real_gyro_vel &&
    lhs.filtered_gyro_vel == rhs.filtered_gyro_vel;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_msgs::MovingAverageData_<ContainerAllocator1> & lhs, const ::rm_msgs::MovingAverageData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::MovingAverageData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::MovingAverageData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::MovingAverageData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "12bd9292dde1a0c07797d8236d7c8fa2";
  }

  static const char* value(const ::rm_msgs::MovingAverageData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x12bd9292dde1a0c0ULL;
  static const uint64_t static_value2 = 0x7797d8236d7c8fa2ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_msgs/MovingAverageData";
  }

  static const char* value(const ::rm_msgs::MovingAverageData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"float64 real_pos_x\n"
"float64 real_pos_y\n"
"float64 real_pos_z\n"
"float64 real_vel_x\n"
"float64 real_vel_y\n"
"float64 real_vel_z\n"
"\n"
"float64 filtered_pos_x\n"
"float64 filtered_pos_y\n"
"float64 filtered_pos_z\n"
"float64 filtered_vel_x\n"
"float64 filtered_vel_y\n"
"float64 filtered_vel_z\n"
"float64 filtered_center_x\n"
"float64 filtered_center_y\n"
"float64 filtered_center_z\n"
"\n"
"float64 real_gyro_vel\n"
"float64 filtered_gyro_vel\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::rm_msgs::MovingAverageData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.real_pos_x);
      stream.next(m.real_pos_y);
      stream.next(m.real_pos_z);
      stream.next(m.real_vel_x);
      stream.next(m.real_vel_y);
      stream.next(m.real_vel_z);
      stream.next(m.filtered_pos_x);
      stream.next(m.filtered_pos_y);
      stream.next(m.filtered_pos_z);
      stream.next(m.filtered_vel_x);
      stream.next(m.filtered_vel_y);
      stream.next(m.filtered_vel_z);
      stream.next(m.filtered_center_x);
      stream.next(m.filtered_center_y);
      stream.next(m.filtered_center_z);
      stream.next(m.real_gyro_vel);
      stream.next(m.filtered_gyro_vel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MovingAverageData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_msgs::MovingAverageData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_msgs::MovingAverageData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "real_pos_x: ";
    Printer<double>::stream(s, indent + "  ", v.real_pos_x);
    s << indent << "real_pos_y: ";
    Printer<double>::stream(s, indent + "  ", v.real_pos_y);
    s << indent << "real_pos_z: ";
    Printer<double>::stream(s, indent + "  ", v.real_pos_z);
    s << indent << "real_vel_x: ";
    Printer<double>::stream(s, indent + "  ", v.real_vel_x);
    s << indent << "real_vel_y: ";
    Printer<double>::stream(s, indent + "  ", v.real_vel_y);
    s << indent << "real_vel_z: ";
    Printer<double>::stream(s, indent + "  ", v.real_vel_z);
    s << indent << "filtered_pos_x: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_pos_x);
    s << indent << "filtered_pos_y: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_pos_y);
    s << indent << "filtered_pos_z: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_pos_z);
    s << indent << "filtered_vel_x: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_vel_x);
    s << indent << "filtered_vel_y: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_vel_y);
    s << indent << "filtered_vel_z: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_vel_z);
    s << indent << "filtered_center_x: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_center_x);
    s << indent << "filtered_center_y: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_center_y);
    s << indent << "filtered_center_z: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_center_z);
    s << indent << "real_gyro_vel: ";
    Printer<double>::stream(s, indent + "  ", v.real_gyro_vel);
    s << indent << "filtered_gyro_vel: ";
    Printer<double>::stream(s, indent + "  ", v.filtered_gyro_vel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_MSGS_MESSAGE_MOVINGAVERAGEDATA_H
