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
//#include <opencv2/imgproc.hpp>
//#include <opencv2/highgui/highgui.hpp>
//#include "include/StrawberryMachine.h"
#include "include/Strawberry.cpp"
#include "include/Vision.cpp"
#include "geometry_msgs/Pose.h"
using namespace cv;

static const std::string OPENCV_WINDOW = "Image window";

class ImageConverter
{
private:
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;
  Vec3b temp_sum_color;
  long int b;
  long int g;
  long int r;
  Mat image_copy;
  long int pix_amount;
  std_msgs::ColorRGBA avarage_RGBA_colors;
  bool test = true;
  double berry_min_radius = 100;
  double crown_min_radius = 2;
  std::vector<Strawberry> detected;
  std::vector<Strawberry> *arr;
  Scalar green_min_copy = {38, 30, 30}; // was 42
  Scalar green_max_copy = {58, 200, 150};
  Scalar red_min_copy= {4, 0.5, 0.5};
  Scalar red_max_copy = {39, 255, 255};
  std_msgs::Int16MultiArray hsv_values;

public:
  cv_bridge::CvImagePtr cv_ptr;
  Mat hsv_image;
  Mat image_test;

  ImageConverter()
      : it_(nh_)
  {
    // Subscrive to input video feed and publish output video feed
    image_sub_ = it_.subscribe("/galaxy_camera/image_raw", 1,
                               &ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video", 1);
  }

  ~ImageConverter()
  {
    // cv::destroyWindow(OPENCV_WINDOW);
  }

  void imageCb(const sensor_msgs::ImageConstPtr &msg)
  {

    //try
    //{
      /*cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8); real testing*/
    image_test = imread("/home/nick/Downloads/Vision foto aardbeien_2.png", 1); //fake testing
    //}
    //catch (cv_bridge::Exception &e)
    //{
    //  ROS_ERROR("cv_bridge exception: %s", e.what());
    //  return;
    //}
    //cvtColor(cv_ptr->image, hsv_image, COLOR_BGR2HSV); // real testing
    cvtColor(image_test, hsv_image, COLOR_BGR2HSV); // fake testing
    ROS_INFO_STREAM("binary image converted?");
    // Threshold(binary_image, cv_ptr->image, 100, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
    Vision visionStrawberry;
    if (hsv_values.data.size() >= 12)
    {
      visionStrawberry.hsv_configurator(hsv_values);
    }
    visionStrawberry.DetectStrawberry(this->hsv_image);
    cv::waitKey(3);
  }
  
  glm::dvec3 CastPointToWorld(glm::dvec2 point)
  {
    glm::dvec3 output = glm::dvec3();
    glm::dvec3 frame_physical_center = glm::dvec3(0.60845, -0.52619, 0.29200);
    // double meter_per_pixel = 0.212 / double(1280);
    double meter_per_pixel = 0.212 / double(1280);

    glm::dvec2 frame_center = glm::dvec2(double(1280) / 2.0, double(960) / 2.0);
    glm::dvec2 physical_distance = (point - frame_center) * glm::dvec2(meter_per_pixel, meter_per_pixel);
    output = frame_physical_center + glm::dvec3(-physical_distance.y, -physical_distance.x, 0.0);

    return output;
  }

  void hsv_configurator(std_msgs::Int16MultiArray hsv)
  {
    hsv_values = hsv;
  }
};

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
  ROS_WARN_STREAM(*distance_traveled);
}
void robotCb(std_msgs::BoolConstPtr done)
{
  ;
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;
  ros::NodeHandle n;

  ros::Publisher image_color = n.advertise<std_msgs::ColorRGBA>("image_color", 1000);
  ros::Subscriber h = n.subscribe("h", 1000, CB_h);
  ros::Subscriber encoder = n.subscribe("encoder_value", 1000, encoderCb);

  while (ros::ok())
  {
    if (hsv_real.data.size() >= 12)
    {
      ic.hsv_configurator(hsv_real);
    }

    ros::spinOnce();
  }
  ros::spin();
  return 0;
}