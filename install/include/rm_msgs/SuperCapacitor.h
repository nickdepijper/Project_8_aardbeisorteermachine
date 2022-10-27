// Generated by gencpp from file rm_msgs/SuperCapacitor.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_SUPERCAPACITOR_H
#define RM_MSGS_MESSAGE_SUPERCAPACITOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rm_msgs
{
template <class ContainerAllocator>
struct SuperCapacitor_
{
  typedef SuperCapacitor_<ContainerAllocator> Type;

  SuperCapacitor_()
    : capacity(0.0)
    , limit_power(0.0)
    , chassis_power(0.0)
    , chassis_power_buffer(0)
    , stamp()  {
    }
  SuperCapacitor_(const ContainerAllocator& _alloc)
    : capacity(0.0)
    , limit_power(0.0)
    , chassis_power(0.0)
    , chassis_power_buffer(0)
    , stamp()  {
  (void)_alloc;
    }



   typedef float _capacity_type;
  _capacity_type capacity;

   typedef float _limit_power_type;
  _limit_power_type limit_power;

   typedef float _chassis_power_type;
  _chassis_power_type chassis_power;

   typedef uint16_t _chassis_power_buffer_type;
  _chassis_power_buffer_type chassis_power_buffer;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;





  typedef boost::shared_ptr< ::rm_msgs::SuperCapacitor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_msgs::SuperCapacitor_<ContainerAllocator> const> ConstPtr;

}; // struct SuperCapacitor_

typedef ::rm_msgs::SuperCapacitor_<std::allocator<void> > SuperCapacitor;

typedef boost::shared_ptr< ::rm_msgs::SuperCapacitor > SuperCapacitorPtr;
typedef boost::shared_ptr< ::rm_msgs::SuperCapacitor const> SuperCapacitorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_msgs::SuperCapacitor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_msgs::SuperCapacitor_<ContainerAllocator1> & lhs, const ::rm_msgs::SuperCapacitor_<ContainerAllocator2> & rhs)
{
  return lhs.capacity == rhs.capacity &&
    lhs.limit_power == rhs.limit_power &&
    lhs.chassis_power == rhs.chassis_power &&
    lhs.chassis_power_buffer == rhs.chassis_power_buffer &&
    lhs.stamp == rhs.stamp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_msgs::SuperCapacitor_<ContainerAllocator1> & lhs, const ::rm_msgs::SuperCapacitor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::SuperCapacitor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::SuperCapacitor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::SuperCapacitor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95558de4e002ee575de7525116e2b0a3";
  }

  static const char* value(const ::rm_msgs::SuperCapacitor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95558de4e002ee57ULL;
  static const uint64_t static_value2 = 0x5de7525116e2b0a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_msgs/SuperCapacitor";
  }

  static const char* value(const ::rm_msgs::SuperCapacitor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 capacity\n"
"float32 limit_power\n"
"float32 chassis_power\n"
"uint16 chassis_power_buffer\n"
"\n"
"time stamp\n"
;
  }

  static const char* value(const ::rm_msgs::SuperCapacitor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.capacity);
      stream.next(m.limit_power);
      stream.next(m.chassis_power);
      stream.next(m.chassis_power_buffer);
      stream.next(m.stamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SuperCapacitor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_msgs::SuperCapacitor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_msgs::SuperCapacitor_<ContainerAllocator>& v)
  {
    s << indent << "capacity: ";
    Printer<float>::stream(s, indent + "  ", v.capacity);
    s << indent << "limit_power: ";
    Printer<float>::stream(s, indent + "  ", v.limit_power);
    s << indent << "chassis_power: ";
    Printer<float>::stream(s, indent + "  ", v.chassis_power);
    s << indent << "chassis_power_buffer: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.chassis_power_buffer);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_MSGS_MESSAGE_SUPERCAPACITOR_H