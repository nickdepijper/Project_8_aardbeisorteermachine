// Generated by gencpp from file rm_msgs/ContinousDetectorSwitch.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_CONTINOUSDETECTORSWITCH_H
#define RM_MSGS_MESSAGE_CONTINOUSDETECTORSWITCH_H

#include <ros/service_traits.h>


#include <rm_msgs/ContinousDetectorSwitchRequest.h>
#include <rm_msgs/ContinousDetectorSwitchResponse.h>


namespace rm_msgs
{

struct ContinousDetectorSwitch
{

typedef ContinousDetectorSwitchRequest Request;
typedef ContinousDetectorSwitchResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ContinousDetectorSwitch
} // namespace rm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rm_msgs::ContinousDetectorSwitch > {
  static const char* value()
  {
    return "124ca6e89084b28197084359298c939c";
  }

  static const char* value(const ::rm_msgs::ContinousDetectorSwitch&) { return value(); }
};

template<>
struct DataType< ::rm_msgs::ContinousDetectorSwitch > {
  static const char* value()
  {
    return "rm_msgs/ContinousDetectorSwitch";
  }

  static const char* value(const ::rm_msgs::ContinousDetectorSwitch&) { return value(); }
};


// service_traits::MD5Sum< ::rm_msgs::ContinousDetectorSwitchRequest> should match
// service_traits::MD5Sum< ::rm_msgs::ContinousDetectorSwitch >
template<>
struct MD5Sum< ::rm_msgs::ContinousDetectorSwitchRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rm_msgs::ContinousDetectorSwitch >::value();
  }
  static const char* value(const ::rm_msgs::ContinousDetectorSwitchRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rm_msgs::ContinousDetectorSwitchRequest> should match
// service_traits::DataType< ::rm_msgs::ContinousDetectorSwitch >
template<>
struct DataType< ::rm_msgs::ContinousDetectorSwitchRequest>
{
  static const char* value()
  {
    return DataType< ::rm_msgs::ContinousDetectorSwitch >::value();
  }
  static const char* value(const ::rm_msgs::ContinousDetectorSwitchRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rm_msgs::ContinousDetectorSwitchResponse> should match
// service_traits::MD5Sum< ::rm_msgs::ContinousDetectorSwitch >
template<>
struct MD5Sum< ::rm_msgs::ContinousDetectorSwitchResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rm_msgs::ContinousDetectorSwitch >::value();
  }
  static const char* value(const ::rm_msgs::ContinousDetectorSwitchResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rm_msgs::ContinousDetectorSwitchResponse> should match
// service_traits::DataType< ::rm_msgs::ContinousDetectorSwitch >
template<>
struct DataType< ::rm_msgs::ContinousDetectorSwitchResponse>
{
  static const char* value()
  {
    return DataType< ::rm_msgs::ContinousDetectorSwitch >::value();
  }
  static const char* value(const ::rm_msgs::ContinousDetectorSwitchResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RM_MSGS_MESSAGE_CONTINOUSDETECTORSWITCH_H
