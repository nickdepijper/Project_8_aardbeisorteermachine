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
//#include "include/StrawberryMachine.h"
#include "include/Core/Strawberry.h"
#include "include/Core/SystemState.h"
using namespace cv;

static const std::string OPENCV_WINDOW  = "Image window";

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
	   double crown_min_radius = 25;
     std::vector<Strawberry> detected;
     
   public:
     cv_bridge::CvImagePtr cv_ptr;
     Mat hsv_image;
     Mat Crown;
		 Mat Berry;
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
       
       try
       {
         cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
       }
       catch (cv_bridge::Exception& e)
       {
         ROS_ERROR("cv_bridge exception: %s", e.what());
         return;
       }
       
       cvtColor(cv_ptr->image, hsv_image, COLOR_BGR2HSV);
       ROS_INFO_STREAM("binary image converted?");
       //Threshold(binary_image, cv_ptr->image, 100, 255, CV_THRESH_BINARY | CV_THRESH_OTSU);

       
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
     
    void DetectStrawberry(Mat input) {
    std::vector<Mat> splitImage;
    Strawberry detected = Strawberry();
    split(input, splitImage);

    Mat Background, BackgroundInv;

    Scalar green_min(45, 125, 0);
    Scalar green_max(75, 255, 255);

    Scalar red_min(0, 0, 0);
    Scalar red_max(15, 255, 255);
    
    Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));
    //Thresh Crown channel and isolate Crown
    inRange(input, green_min, green_max, this->Crown);
    threshold(this->Crown, this->Crown, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
    cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
    cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
    //Thresh Berry channel and isolate Berry
    inRange(input, red_min, red_max, Berry);
    threshold(this->Berry, this->Berry, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
    cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
    cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1), 4);
    

    std::vector<glm::vec3> found_crowns;
    FindBoundingCircle(this->Crown, &found_crowns, crown_min_radius);
    
    std::vector<glm::vec3> found_berries;
    FindBoundingCircle(this->Berry, &found_berries, berry_min_radius);
    
    if (found_crowns.size() != found_berries.size()) {
      Logger::LogWarning("Berry and crown contour mismatch: found berries does not equal found crowns");
      return;
    }

    //glm::dvec3 frame_physical_center = glm::dvec3(config->vision_config.conveyor_start[0], config->vision_config.conveyor_start[1], config->vision_config.conveyor_start[2]);
    for (int i = 0; i < found_berries.size(); i++) {
      glm::vec2 berry_center_pixel = found_berries[i];
      glm::vec2 crown_center_pixel = glm::vec2(0.0f, 0.0f);
      double smallest_distance = 0;
      int index = 0;
      for (int k = 0; k < found_crowns.size(); k++) {
        crown_center_pixel = found_crowns[i];
        float distance = glm::distance(berry_center_pixel, crown_center_pixel);
        if (distance < smallest_distance) {
          index = k;
          smallest_distance = distance;
        }
      }
      crown_center_pixel = found_crowns[index];
      Strawberry detec;
      detec.valid = false;
      detec.crown_center_pixel_pos = glm::vec2(crown_center_pixel.x, crown_center_pixel.y);
      detec.berry_center_pixel_pos = glm::vec2(berry_center_pixel.x, berry_center_pixel.y);

      if(detec.crown_center_pixel_pos.x > double(1240 - 200)
        || detec.berry_center_pixel_pos.x > double(960 - 200)) {
        continue;
      }
      else {
        float distance = glm::distance(detec.crown_center_pixel_pos, detec.berry_center_pixel_pos);
        if (distance < 500.0f && distance != 0) {
          detec.valid = true;
        }

        detec.estemated_length = 0;
        detec.estemated_width = 0;
        detec.center_position_in_frame = detec.berry_center_pixel_pos;
        
        detec.physical_position = CastPointToWorld(detec.center_position_in_frame); 
        
        this->detected.push_back(detec);
      }
    }
  }
    void FindBoundingCircle(cv::Mat input, std::vector<glm::vec3>* arr, double min_radius)
{
	std::vector<std::vector<cv::Point> > contours;
	std::vector<cv::Vec4i> hierarchy;
	cv::findContours(input, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE);

	if (contours.size() == 0 || contours.size() > 50) {
		return;
	}

	std::vector<std::vector<Point>> contours_poly(contours.size());
	std::vector<Rect> boundRect(contours.size());
	std::vector<Point2f>center(contours.size());
	std::vector<float>radius(contours.size());

	for (size_t i = 0; i < contours.size(); i++)
	{
		approxPolyDP(Mat(contours[i]), contours_poly[i], 3, true);
		boundRect[i] = boundingRect(Mat(contours_poly[i]));
		minEnclosingCircle(contours_poly[i], center[i], radius[i]);
	}

	std::vector<glm::vec2> valid;

	for (int i = 0; i < contours.size(); i++) {
		if (radius[i] > min_radius) {
			valid.push_back(glm::vec2(i, radius[i]));
		}
	}

	for (int i = 0; i < valid.size(); i++) {
		cv::Point c_point = center[valid[i].x];
		arr->push_back(glm::vec3(c_point.x, c_point.y, valid[i].y));
	}
	
	return;
}
    glm::dvec3 CastPointToWorld(glm::dvec2 point)
{
	glm::dvec3 output = glm::dvec3();
	glm::dvec3 frame_physical_center = glm::dvec3(0.60845, -0.52619, 0.29200);
	double meter_per_pixel = 0.212 / double(1280);
	
	
	glm::dvec2 frame_center = glm::dvec2(double(1280) / 2.0, double(960) / 2.0);
	glm::dvec2 physical_distance = (point - frame_center) * glm::dvec2(meter_per_pixel, meter_per_pixel);
	output = frame_physical_center + glm::dvec3(-physical_distance.y, -physical_distance.x, 0.0);

	return output;
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
      ic.DetectStrawberry(ic.hsv_image);
      imshow("strawberry", ic.Berry);
      imshow("strawberry", ic.Crown);
     }
     
     ros::spin();
     return 0;
   }