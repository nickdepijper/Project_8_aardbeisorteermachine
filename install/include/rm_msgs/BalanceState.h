// Generated by gencpp from file rm_msgs/BalanceState.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_BALANCESTATE_H
#define RM_MSGS_MESSAGE_BALANCESTATE_H


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
struct BalanceState_
{
  typedef BalanceState_<ContainerAllocator> Type;

  BalanceState_()
    : header()
    , alpha(0.0)
    , alpha_dot(0.0)
    , vel(0.0)
    , theta_dot(0.0)
    , control_1(0.0)
    , control_2(0.0)  {
    }
  BalanceState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , alpha(0.0)
    , alpha_dot(0.0)
    , vel(0.0)
    , theta_dot(0.0)
    , control_1(0.0)
    , control_2(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _alpha_type;
  _alpha_type alpha;

   typedef double _alpha_dot_type;
  _alpha_dot_type alpha_dot;

   typedef double _vel_type;
  _vel_type vel;

   typedef double _theta_dot_type;
  _theta_dot_type theta_dot;

   typedef double _control_1_type;
  _control_1_type control_1;

   typedef double _control_2_type;
  _control_2_type control_2;





  typedef boost::shared_ptr< ::rm_msgs::BalanceState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_msgs::BalanceState_<ContainerAllocator> const> ConstPtr;

}; // struct BalanceState_

typedef ::rm_msgs::BalanceState_<std::allocator<void> > BalanceState;

typedef boost::shared_ptr< ::rm_msgs::BalanceState > BalanceStatePtr;
typedef boost::shared_ptr< ::rm_msgs::BalanceState const> BalanceStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_msgs::BalanceState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_msgs::BalanceState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_msgs::BalanceState_<ContainerAllocator1> & lhs, const ::rm_msgs::BalanceState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.alpha == rhs.alpha &&
    lhs.alpha_dot == rhs.alpha_dot &&
    lhs.vel == rhs.vel &&
    lhs.theta_dot == rhs.theta_dot &&
    lhs.control_1 == rhs.control_1 &&
    lhs.control_2 == rhs.control_2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_msgs::BalanceState_<ContainerAllocator1> & lhs, const ::rm_msgs::BalanceState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::BalanceState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::BalanceState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::BalanceState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::BalanceState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::BalanceState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::BalanceState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_msgs::BalanceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54fad2a9c502654a43a195c5bf42346b";
  }

  static const char* value(const ::rm_msgs::BalanceState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54fad2a9c502654aULL;
  static const uint64_t static_value2 = 0x43a195c5bf42346bULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_msgs::BalanceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_msgs/BalanceState";
  }

  static const char* value(const ::rm_msgs::BalanceState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_msgs::BalanceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"float64 alpha\n"
"float64 alpha_dot\n"
"float64 vel\n"
"float64 theta_dot\n"
"float64 control_1\n"
"float64 control_2\n"
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

  static const char* value(const ::rm_msgs::BalanceState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_msgs::BalanceState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.alpha);
      stream.next(m.alpha_dot);
      stream.next(m.vel);
      stream.next(m.theta_dot);
      stream.next(m.control_1);
      stream.next(m.control_2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BalanceState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_msgs::BalanceState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_msgs::BalanceState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "alpha: ";
    Printer<double>::stream(s, indent + "  ", v.alpha);
    s << indent << "alpha_dot: ";
    Printer<double>::stream(s, indent + "  ", v.alpha_dot);
    s << indent << "vel: ";
    Printer<double>::stream(s, indent + "  ", v.vel);
    s << indent << "theta_dot: ";
    Printer<double>::stream(s, indent + "  ", v.theta_dot);
    s << indent << "control_1: ";
    Printer<double>::stream(s, indent + "  ", v.control_1);
    s << indent << "control_2: ";
    Printer<double>::stream(s, indent + "  ", v.control_2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_MSGS_MESSAGE_BALANCESTATE_H
