#include "ros/ros.h"
#include "opencv2/opencv.hpp"
#include "opencv2/features2d/features2d.hpp"
#include <std_msgs/String.h>
#include <std_msgs/ColorRGBA.h>
#include <std_msgs/Int16MultiArray.h>
#include <sensor_msgs/Image.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Bool.h>
#include "include/Strawberry.cpp"
#include "include/Vision.cpp"
#include "geometry_msgs/Pose.h"
using namespace cv;

static const std::string OPENCV_WINDOW = "Image window";


image_transport::Subscriber image_sub_;
image_transport::Publisher image_pub_;
Vec3b temp_sum_color;
long int b;
long int g;
long int r;
Mat image_copy;
Mat binary_image;
long int pix_amount;
std_msgs::ColorRGBA avarage_RGBA_colors;
bool test = true;
double berry_min_radius = 100;
double crown_min_radius = 2;
std::vector<Strawberry> detected;

Scalar green_min_copy = {38, 30, 30}; // was 42
Scalar green_max_copy = {58, 200, 150};
Scalar red_min_copy = {4, 0.5, 0.5};
Scalar red_max_copy = {39, 255, 255};
std_msgs::Int16MultiArray hsv_values;
Vision visionStrawberry;

cv_bridge::CvImagePtr cv_ptr;
Mat hsv_image;
Mat image_test;
double testing = 0;

void imageCb(const sensor_msgs::ImageConstPtr &msg)
{

  try
  {
  cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8); //real testing
  //image_test = imread("/home/nick/Downloads/Vision foto aardbeien_2.png", 1); // fake testing
  }
   catch (cv_bridge::Exception &e)
  {
    ROS_ERROR("cv_bridge exception: %s", e.what());
    return;
  }
  cvtColor(cv_ptr->image, hsv_image, COLOR_BGR2HSV); // real testing
  //cvtColor(image_test, hsv_image, COLOR_BGR2HSV); // fake testing
  cv::threshold(binary_image, cv_ptr->image, 100, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
  if (hsv_values.data.size() >= 12)
  {
    visionStrawberry.hsv_configurator(hsv_values);
  }
  visionStrawberry.DetectStrawberry(hsv_image);
  line(hsv_image, cv::Point(0, 960/2), cv::Point(1280, 960/2), cv::Scalar(0, 0, 255), 2);
  line(hsv_image, cv::Point(1280/2, 0), cv::Point(1280/2,960), cv::Scalar(0, 0, 255), 2);
  cv::imshow("Original image", hsv_image);
  cv::waitKey(3);
}



void hsv_configurator(std_msgs::Int16MultiArray hsv)
{
  hsv_values = hsv;
}

std_msgs::Int16MultiArray hsv_real;

void CB_h(const std_msgs::Int16MultiArray::ConstPtr &hsv)
{
  if (hsv->data.size() >= 12)
  {
    hsv_real = *hsv;
  }
}
void encoderCb(std_msgs::Float32Ptr distance_traveled)
{
  std::vector<Strawberry> *arr = visionStrawberry.getStrawberryArray();
  if (arr->size() > 0)
  {
    Strawberry::UpdateStrawberryPosition(arr, (distance_traveled->data));// 1.05564);
    //ROS_WARN_STREAM("x = " << arr->at(0).physical_position.position.x << " y = " << arr->at(0).physical_position.position.y);
  }
  testing += (distance_traveled->data);// 1.094;
  ROS_WARN_STREAM("sum = " << testing);
 
}
void robotCb(std_msgs::BoolConstPtr done)
{
  ;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_converter");
  ros::NodeHandle n;
  image_transport::ImageTransport it_(n);
  image_sub_ = it_.subscribe("/galaxy_camera/image_raw", 1,
                             imageCb);
  image_pub_ = it_.advertise("/image_converter/output_video", 1);

  ros::Publisher image_color = n.advertise<std_msgs::ColorRGBA>("image_color", 1000);
  ros::Subscriber h = n.subscribe("h", 1000, CB_h);
  ros::Subscriber encoder = n.subscribe("encoder_value", 10000, encoderCb);

  while (ros::ok())
  {
    if (hsv_real.data.size() >= 12)
    {
      hsv_configurator(hsv_real);
    }

    ros::spinOnce();
  }
  ros::spin();
  return 0;
}