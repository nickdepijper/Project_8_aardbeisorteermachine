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
#include "include/Simple_path_planner.cpp"
#include <iostream>
#include "include/draft_pick_position.cpp"
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

Scalar green_min_copy = {38, 30, 30}; // was 42
Scalar green_max_copy = {58, 200, 150};
Scalar red_min_copy = {4, 0.5, 0.5};
Scalar red_max_copy = {39, 255, 255};
std_msgs::Int16MultiArray hsv_values;
Vision visionStrawberry;

cv_bridge::CvImagePtr cv_ptr;
Mat hsv_image;
Mat image_test;
float testing = 0;
float difference = 0;
float testering = 0;
bool picked_berry = false;
bool processing_berry_order = false;
int stawberry_vector_size;
Path_planner path_planner;
vector<Strawberry> planned_path;
vector<Strawberry>* strawberry_vector;
bool all_strawberries_reachable = true;
std_msgs::Bool conveyer_belt_active;
std_msgs::Bool conveyer_belt_previous_state;
Pose robot_to_camera_distance;
std::chrono::_V2::high_resolution_clock::time_point start;
Pose single_pick_pose;

void init()
{
  robot_to_camera_distance.position.x = 1160;
  robot_to_camera_distance.position.y = 474;
  robot_to_camera_distance.position.z = 105;
  robot_to_camera_distance.orientation.w = 90;
}
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
  //cv::threshold(binary_image, cv_ptr->image, 100, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
  

  // activate configurator to overwrite hsv filter values
  if (hsv_values.data.size() >= 12)
  {
    visionStrawberry.hsv_configurator(hsv_values);
  }
  visionStrawberry.DetectStrawberry(hsv_image);
  // Drawing crosshair
  line(hsv_image, cv::Point(0, 960/2), cv::Point(1280, 960/2), cv::Scalar(0, 0, 255), 2);
  line(hsv_image, cv::Point(1280/2, 0), cv::Point(1280/2,960), cv::Scalar(0, 0, 255), 2);
  cv::imshow("Original image", hsv_image);
  cv::waitKey(3);

  strawberry_vector = visionStrawberry.getStrawberryArray();
  int amount_reachable_berries = 0;
  for (int i = 0; i<strawberry_vector->size(); i++){
    if (strawberry_vector->at(i).physical_position.position.x < -350){
          conveyer_belt_active.data = false;
        }
  }
  
  
  // check if five berries are within robot reach
  if (strawberry_vector->size() >= 5 &! processing_berry_order){
    for (int i = 0; i<strawberry_vector->size(); i++){
      if (strawberry_vector->at(i).reachable == 1){
        //ROS_WARN_STREAM("true!!");
        amount_reachable_berries += 1;
      }
    }
    if (amount_reachable_berries >= 5){
      ROS_WARN_STREAM(amount_reachable_berries << "berries are reachable");
      
      if (conveyer_belt_active.data == true){
        conveyer_belt_active.data = false;
        start = chrono::high_resolution_clock::now();
        }
      else{
        // wait for conveyer belt to stop
        auto stop = chrono::high_resolution_clock::now();
        auto duration = chrono::duration_cast<std::chrono::milliseconds>(stop - start);
        ROS_WARN_STREAM("duration " << duration.count());
        if (duration.count() > 2000)
        {
          for (int i = 0; i<strawberry_vector->size(); i++){
            ROS_WARN_STREAM("+++Berry " << i << " in vector. X = " << strawberry_vector->at(i).physical_position.position.x);
          }
          planned_path = path_planner.plan_path();
          processing_berry_order = true;
          for (int i = 0; i<planned_path.size(); i++){
          ROS_WARN_STREAM("---Berry: " << i+1 << " x = " << planned_path.at(i).physical_position.position.x);
          ROS_WARN_STREAM("---Berry: " << i+1 << " y = " << planned_path.at(i).physical_position.position.y);
          ROS_WARN_STREAM("---Berry: " << i+1 << " z = " << planned_path.at(i).physical_position.position.z);
          ROS_WARN_STREAM("---Berry: " << i+1 << " w = " << planned_path.at(i).physical_position.orientation.w);
          }
          // display function
          for (int i; i < planned_path.size(); i++)
          {
            ;
          }
        }
      }

      
    }
    amount_reachable_berries = 0;
  }
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
  difference = (distance_traveled->data - testing);
  testing = (distance_traveled->data);
  if (arr->size() > 0)
  {
    Strawberry::UpdateStrawberryPosition(arr, (difference));
    //ROS_WARN_STREAM("x = " << arr->at(0).physical_position.position.x << " y = " << arr->at(0).physical_position.position.y);
  }
  if (distance_traveled->data >= 2000.63)
  {
    testing = 0.0;
  }
  testering = distance_traveled->data;
  //ROS_WARN_STREAM("delta = " << difference);
  ROS_WARN_STREAM("sum = " << testering);
}
void robotCb(std_msgs::BoolConstPtr done_picking)
{
  picked_berry = done_picking->data;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_converter");
  init();
  ros::NodeHandle n;
  image_transport::ImageTransport it_(n);
  image_sub_ = it_.subscribe("/galaxy_camera/image_raw", 1,
                             imageCb);
  image_pub_ = it_.advertise("/image_converter/output_video", 1);

  ros::Publisher image_color = n.advertise<std_msgs::ColorRGBA>("image_color", 1000);
  ros::Publisher robot_send = n.advertise<Pose>("Robot_control", 1000);
  ros::Publisher conveyer_send = n.advertise<std_msgs::Bool>("transportband", 1000);

  ros::Subscriber robot_get = n.subscribe("Berry_pickup", 1000, robotCb);
  ros::Subscriber h = n.subscribe("h", 1000, CB_h);
  ros::Subscriber encoder = n.subscribe("encoder_value", 1000, encoderCb);
  conveyer_belt_active.data = true;
  conveyer_belt_previous_state.data = false;
  pickPosition pick_position;
  //ROS_WARN_STREAM("function began");
  ros::spinOnce();
  ros::Duration(5).sleep();
  

  path_planner.set_path_planner_pointer(visionStrawberry.getStrawberryArray());
  while (ros::ok())
  {
    if (conveyer_belt_previous_state.data != conveyer_belt_active.data){
      conveyer_send.publish(conveyer_belt_active);
      //ROS_WARN_STREAM("function executed");
    }
    conveyer_belt_previous_state.data = conveyer_belt_active.data;
    if (hsv_real.data.size() >= 12)
    {
      hsv_configurator(hsv_real);
    }
    if (processing_berry_order)
    {
      single_pick_pose = pick_position.returnStrawberryFunc(planned_path, picked_berry);
      picked_berry = false;
      robot_send.publish(single_pick_pose);

      if (pick_position.get_processing_ended())
      { 
         processing_berry_order = false;   
      }
    }

    ros::spinOnce();
  }
  ros::spin();
  return 0;
}