// Generated by gencpp from file rm_msgs/StatusChange.msg
// DO NOT EDIT!


#ifndef RM_MSGS_MESSAGE_STATUSCHANGE_H
#define RM_MSGS_MESSAGE_STATUSCHANGE_H

#include <ros/service_traits.h>


#include <rm_msgs/StatusChangeRequest.h>
#include <rm_msgs/StatusChangeResponse.h>


namespace rm_msgs
{

struct StatusChange
{

typedef StatusChangeRequest Request;
typedef StatusChangeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StatusChange
} // namespace rm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rm_msgs::StatusChange > {
  static const char* value()
  {
    return "88a5578dd9e0ad314373c2139d66dbf6";
  }

  static const char* value(const ::rm_msgs::StatusChange&) { return value(); }
};

template<>
struct DataType< ::rm_msgs::StatusChange > {
  static const char* value()
  {
    return "rm_msgs/StatusChange";
  }

  static const char* value(const ::rm_msgs::StatusChange&) { return value(); }
};


// service_traits::MD5Sum< ::rm_msgs::StatusChangeRequest> should match
// service_traits::MD5Sum< ::rm_msgs::StatusChange >
template<>
struct MD5Sum< ::rm_msgs::StatusChangeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rm_msgs::StatusChange >::value();
  }
  static const char* value(const ::rm_msgs::StatusChangeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rm_msgs::StatusChangeRequest> should match
// service_traits::DataType< ::rm_msgs::StatusChange >
template<>
struct DataType< ::rm_msgs::StatusChangeRequest>
{
  static const char* value()
  {
    return DataType< ::rm_msgs::StatusChange >::value();
  }
  static const char* value(const ::rm_msgs::StatusChangeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rm_msgs::StatusChangeResponse> should match
// service_traits::MD5Sum< ::rm_msgs::StatusChange >
template<>
struct MD5Sum< ::rm_msgs::StatusChangeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rm_msgs::StatusChange >::value();
  }
  static const char* value(const ::rm_msgs::StatusChangeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rm_msgs::StatusChangeResponse> should match
// service_traits::DataType< ::rm_msgs::StatusChange >
template<>
struct DataType< ::rm_msgs::StatusChangeResponse>
{
  static const char* value()
  {
    return DataType< ::rm_msgs::StatusChange >::value();
  }
  static const char* value(const ::rm_msgs::StatusChangeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RM_MSGS_MESSAGE_STATUSCHANGE_H
