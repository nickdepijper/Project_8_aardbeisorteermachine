// Generated by gencpp from file rm_msgs/ShootData.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_SHOOTDATA_H
#define RM_MSGS_MESSAGE_SHOOTDATA_H


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
struct ShootData_
{
  typedef ShootData_<ContainerAllocator> Type;

  ShootData_()
    : bullet_type(0)
    , shooter_id(0)
    , bullet_freq(0)
    , bullet_speed(0.0)
    , stamp()  {
    }
  ShootData_(const ContainerAllocator& _alloc)
    : bullet_type(0)
    , shooter_id(0)
    , bullet_freq(0)
    , bullet_speed(0.0)
    , stamp()  {
  (void)_alloc;
    }



   typedef uint8_t _bullet_type_type;
  _bullet_type_type bullet_type;

   typedef uint8_t _shooter_id_type;
  _shooter_id_type shooter_id;

   typedef uint8_t _bullet_freq_type;
  _bullet_freq_type bullet_freq;

   typedef float _bullet_speed_type;
  _bullet_speed_type bullet_speed;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;





  typedef boost::shared_ptr< ::rm_msgs::ShootData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rm_msgs::ShootData_<ContainerAllocator> const> ConstPtr;

}; // struct ShootData_

typedef ::rm_msgs::ShootData_<std::allocator<void> > ShootData;

typedef boost::shared_ptr< ::rm_msgs::ShootData > ShootDataPtr;
typedef boost::shared_ptr< ::rm_msgs::ShootData const> ShootDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rm_msgs::ShootData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rm_msgs::ShootData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rm_msgs::ShootData_<ContainerAllocator1> & lhs, const ::rm_msgs::ShootData_<ContainerAllocator2> & rhs)
{
  return lhs.bullet_type == rhs.bullet_type &&
    lhs.shooter_id == rhs.shooter_id &&
    lhs.bullet_freq == rhs.bullet_freq &&
    lhs.bullet_speed == rhs.bullet_speed &&
    lhs.stamp == rhs.stamp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rm_msgs::ShootData_<ContainerAllocator1> & lhs, const ::rm_msgs::ShootData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::ShootData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rm_msgs::ShootData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::ShootData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rm_msgs::ShootData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::ShootData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rm_msgs::ShootData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rm_msgs::ShootData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "974d24ddaca58a0fd7ae13376c5c9d3c";
  }

  static const char* value(const ::rm_msgs::ShootData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x974d24ddaca58a0fULL;
  static const uint64_t static_value2 = 0xd7ae13376c5c9d3cULL;
};

template<class ContainerAllocator>
struct DataType< ::rm_msgs::ShootData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rm_msgs/ShootData";
  }

  static const char* value(const ::rm_msgs::ShootData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rm_msgs::ShootData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 bullet_type\n"
"uint8 shooter_id\n"
"uint8 bullet_freq\n"
"float32 bullet_speed\n"
"\n"
"time stamp\n"
;
  }

  static const char* value(const ::rm_msgs::ShootData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rm_msgs::ShootData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bullet_type);
      stream.next(m.shooter_id);
      stream.next(m.bullet_freq);
      stream.next(m.bullet_speed);
      stream.next(m.stamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShootData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rm_msgs::ShootData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rm_msgs::ShootData_<ContainerAllocator>& v)
  {
    s << indent << "bullet_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bullet_type);
    s << indent << "shooter_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.shooter_id);
    s << indent << "bullet_freq: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bullet_freq);
    s << indent << "bullet_speed: ";
    Printer<float>::stream(s, indent + "  ", v.bullet_speed);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RM_MSGS_MESSAGE_SHOOTDATA_H
