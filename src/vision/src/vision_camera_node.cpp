#include "ros/ros.h"
#include "opencv2/opencv.hpp"
#include <std_msgs/String.h>
#include <std_msgs/ColorRGBA.h>
#include <sensor_msgs/Image.h>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "Strawberry.h"
using namespace cv;

static const std::string OPENCV_WINDOW  = "Image window";

class ImageConverter
   {
     ros::NodeHandle nh_;
     image_transport::ImageTransport it_;
     image_transport::Subscriber image_sub_;
     image_transport::Publisher image_pub_;
     cv::Vec3b temp_sum_color;
     long int b;
     long int g;
     long int r;
     cv::Mat image_copy;
     long int pix_amount;
     std_msgs::ColorRGBA avarage_RGBA_colors;
     bool test = true;

   
   public:
     ImageConverter()
       : it_(nh_)
    {
       // Subscrive to input video feed and publish output video feed
       image_sub_ = it_.subscribe("/galaxy_camera/image_raw", 1,
         &ImageConverter::imageCb, this);
       image_pub_ = it_.advertise("/image_converter/output_video", 1);
   
       //cv::namedWindow(OPENCV_WINDOW);
     }
   
     ~ImageConverter()
     {
       //cv::destroyWindow(OPENCV_WINDOW);
     }
   
     void imageCb(const sensor_msgs::ImageConstPtr& msg)
     {
       cv_bridge::CvImagePtr cv_ptr;
       try
       {
         cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
       }
       catch (cv_bridge::Exception& e)
       {
         ROS_ERROR("cv_bridge exception: %s", e.what());
         return;
       }
       Mat binary_image;
       cvtColor(cv_ptr->image, binary_image, COLOR_BGR2GRAY);
       ROS_INFO_STREAM("binary image converted?");
       //Threshold(binary_image, cv_ptr->image, 100, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);
       if (true){
        imshow("binary_image", binary_image);
        test = false;
       }
       
        
       
       //ROS_INFO_STREAM(avarage_RGBA_colors);

       
       // Update GUI Window
       //cv::imshow(OPENCV_WINDOW, cv_ptr->image);
       cv::waitKey(3);
   
       // Output modified video stream
       image_pub_.publish(cv_ptr->toImageMsg());
     }

     std_msgs::ColorRGBA get_avarage_color()
     {
      return avarage_RGBA_colors;
     }
   };
   
   int main(int argc, char** argv)
   {
     ros::init(argc, argv, "image_converter");
     ImageConverter ic;
     ros::NodeHandle n;
     ros::Publisher image_color = n.advertise<std_msgs::ColorRGBA>("image_color", 1000);
     
     while (ros::ok()){
      image_color.publish(ic.get_avarage_color());
      ros::spinOnce();
     }
     
     ros::spin();
     return 0;
   }