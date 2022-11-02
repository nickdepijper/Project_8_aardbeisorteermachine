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
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
//#include "include/StrawberryMachine.h"
#include "include/Strawberry.h"
//#include "include/Core/SystemState.h"
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
	   double crown_min_radius = 2;
     std::vector<Strawberry> detected;
     int counter = 0;
     int angles[10];
     
   public:
     cv_bridge::CvImagePtr cv_ptr;
     Mat hsv_image;
     Mat Crown;
		 Mat Berry;
     Scalar green_min_copy = {42, 30, 30};
     Scalar green_max_copy = {58, 200, 150};
     Scalar red_min_copy = {4, 0.5, 0.5};
     Scalar red_max_copy = {39, 255, 255};
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
       if (this->counter == 0){
         this->DetectStrawberry(this->hsv_image);
         this->counter = 0;
       }
       else {
          imshow("test",this->hsv_image);
       }
       //this->counter++;
      
       
       
       // Update GUI Window
       //cv::imshow(OPENCV_WINDOW, cv_ptr->image);
       cv::waitKey(3);
   
       // Output modified video stream
       image_pub_.publish(cv_ptr->toImageMsg());
     }

    std_msgs::ColorRGBA get_avarage_color(){
      return avarage_RGBA_colors;
     }
     
    void DetectStrawberry(Mat input) {
      std::vector<Mat> splitImage;
      Strawberry detected = Strawberry();
      Mat detected_strawberries = input;
      split(input, splitImage);
      //imshow("image 1", splitImage.at(0));
      //imshow("image 2", splitImage.at(1));
      //imshow("image 3", splitImage.at(2));

      //Scalar green_min(45, 125, 0);
      //Scalar green_max(75, 255, 255);
      Scalar green_min(44, 199, 247);
      Scalar green_max(58, 255, 255);

      Scalar red_min(4, 255, 247);
      Scalar red_max(53, 255, 255);
      
      Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));
      //Thresh Crown channel and isolate Crown
      inRange(input, green_min_copy, green_max_copy, this->Crown);
      threshold(this->Crown, this->Crown, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
      cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
      cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
      //Thresh Berry channel and isolate Berry
      inRange(input, red_min_copy, red_max_copy, this->Berry);
      threshold(this->Berry, this->Berry, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
      
      cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
      cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1), 4);
      Mat merge = this->Crown + this->Berry;
      imshow("crown", this->Crown);
      imshow("berry", this->Berry);
      //imshow("strawberry merge", merge);
      //ROS_WARN_STREAM("gmi: " << green_min_copy << "gma: " << green_max_copy);
      // Setup SimpleBlobDetector parameters.
      SimpleBlobDetector::Params params_1;
        
      // Change thresholds
      params_1.minThreshold = 0;
      params_1.maxThreshold = 255;
      
      params_1.filterByColor = true;
      params_1.blobColor = 255;


        // Filter by Area.
      params_1.filterByArea = true;
      params_1.minArea = 800;
      params_1.maxArea = 30000;
        
        // Filter by Circularity
      params_1.filterByCircularity = false;
      params_1.minCircularity = 0.1;
        
        // Filter by Convexity
      params_1.filterByConvexity = false;
      params_1.minConvexity = 0.87;
        
        // Filter by Inertia
      params_1.filterByInertia = false;
      params_1.minInertiaRatio = 0.01;

      // Setup SimpleBlobDetector parameters.
      SimpleBlobDetector::Params params_2;
            // Change thresholds
      params_2.minThreshold = 0;
      params_2.maxThreshold = 255;
      
      params_2.filterByColor = true;
      params_2.blobColor = 255;


        // Filter by Area.
      params_2.filterByArea = true;
      params_2.minArea = 400;
      params_2.maxArea = 20000;
        
        // Filter by Circularity
      params_2.filterByCircularity = false;
      params_2.minCircularity = 0.1;
        
        // Filter by Convexity
      params_2.filterByConvexity = false;
      params_2.minConvexity = 0.87;
        
        // Filter by Inertia
      params_2.filterByInertia = false;
      params_2.minInertiaRatio = 0.01;

      std::vector<KeyPoint> keypoints_berry;
      std::vector<KeyPoint> keypoints_crown;
      Ptr<SimpleBlobDetector> detector_1 = SimpleBlobDetector::create(params_1);
      Ptr<SimpleBlobDetector> detector_2 = SimpleBlobDetector::create(params_2);
      Mat cropped_image = merge(Range(150, 800), Range (290, 1100));
      Mat cropped_image_berry = this->Berry(Range(150, 800), Range (290, 1100));
      Mat cropped_image_crown = this->Crown(Range(150, 800), Range (290, 1100));
      
      detector_1->detect(cropped_image_berry, keypoints_berry);
      detector_2->detect(cropped_image_crown, keypoints_crown);
      

      if (keypoints_berry.size() != keypoints_crown.size()) {
        ROS_WARN_STREAM("Amount berries does not equal amount crowns");
      }
      else {
        for (int i = 0 ; i < keypoints_berry.size(); i++)
        {
          line(cropped_image, keypoints_berry.at(i).pt,keypoints_crown.at(i).pt, cv::Scalar(0, 0, 0), 2);
          double crown_distance_to_center = glm::distance(glm::dvec2(keypoints_berry.at(i).pt.x, keypoints_berry.at(i).pt.y),glm::dvec2(keypoints_crown.at(i).pt.x, keypoints_crown.at(i).pt.y));
		      double belt_distance_to_center = glm::distance(glm::dvec2(keypoints_berry.at(i).pt.x, keypoints_berry.at(i).pt.y), glm::dvec2(keypoints_crown.at(i).pt.x, keypoints_berry.at(i).pt.y));
          double angle = std::abs(std::acos(belt_distance_to_center / crown_distance_to_center)) * (180.0 / M_PI);
          angles[i] = angle;
          ROS_WARN_STREAM(angles[0]);

          Point2f upper_left;
          upper_left.x = keypoints_berry.at(i).pt.x - (keypoints_berry.at(i).size / 2) - 10;
          upper_left.y = keypoints_berry.at(i).pt.y + (keypoints_berry.at(i).size / 2) + 10;

          Point2f lower_right;
          lower_right.x = keypoints_berry.at(i).pt.x + (keypoints_berry.at(i).size / 2) + 10;
          lower_right.y = keypoints_berry.at(i).pt.y - (keypoints_berry.at(i).size / 2) - 10;

          rectangle(detected_strawberries, upper_left, lower_right, cv::Scalar(0, 0, 255));
          imshow("Detected strawberries", detected_strawberries);
        }
      }

      drawKeypoints(cropped_image, keypoints_berry, cropped_image, Scalar(0,0,255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS );
      drawKeypoints(cropped_image, keypoints_crown, cropped_image, Scalar(0,0,255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS );
      imshow("keypoints", cropped_image);



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
          arr->push_back(glm::vec3(c_point.x, c_point.y, valid[i].y)); // gives back the center points (x,y) and radius of circle around contour
        }
      return;
      }

    glm::dvec3 CastPointToWorld(glm::dvec2 point)
      {
        glm::dvec3 output = glm::dvec3();
        glm::dvec3 frame_physical_center = glm::dvec3(0.60845, -0.52619, 0.29200);
        //double meter_per_pixel = 0.212 / double(1280);
        double meter_per_pixel = 0.212 / double(1280);
        
        
        glm::dvec2 frame_center = glm::dvec2(double(1280) / 2.0, double(960) / 2.0);
        glm::dvec2 physical_distance = (point - frame_center) * glm::dvec2(meter_per_pixel, meter_per_pixel);
        output = frame_physical_center + glm::dvec3(-physical_distance.y, -physical_distance.x, 0.0);

        return output;
      }
    void hsv_configurator (std_msgs::Int16MultiArray hsv)
    {
        this->green_min_copy[0] = hsv.data[0], hsv.data[1], hsv.data[2];
        this->green_max_copy[0] = hsv.data[3], hsv.data[4], hsv.data[5];
        this->red_min_copy [0] = hsv.data[6], hsv.data[7], hsv.data[8];
        this->red_max_copy [0] = hsv.data[9], hsv.data[10], hsv.data[11];    
        ROS_WARN_STREAM("gmi: " << this->green_min_copy << "gma: " << this->green_max_copy);
    }
    void DetectStrawberryTest(Mat input) 
      {
        
        // Setup SimpleBlobDetector parameters.
        SimpleBlobDetector::Params params;
        
        // Change thresholds
        params.minThreshold = 200;
        params.maxThreshold = 255;
        
        // Filter by Area.
        params.filterByArea = false;
        params.minArea = 100;
        params.maxArea = 3000;
        
        // Filter by Circularity
        params.filterByCircularity = true;
        params.minCircularity = 0.1;
        
        // Filter by Convexity
        params.filterByConvexity = false;
        params.minConvexity = 0.87;
        
        // Filter by Inertia
        params.filterByInertia = false;
        params.minInertiaRatio = 0.01;

        std::vector<Mat> splitImage;
        split(input, splitImage);
        Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));

        // Set up the detector with default parameters.
        std::vector<KeyPoint> keypoints;
        Ptr<SimpleBlobDetector> detector = SimpleBlobDetector::create(params);
        detector->detect(splitImage.at(2), keypoints);
        ROS_WARN_STREAM(input.channels());
        Mat im_with_keypoints;
        drawKeypoints(splitImage.at(2), keypoints, im_with_keypoints, Scalar(0,0,255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS );
        imshow("keypoints", im_with_keypoints);
        imshow("image r", splitImage.at(0));
        imshow("image g", splitImage.at(1));
        imshow("image b", splitImage.at(2));
        ROS_WARN_STREAM(keypoints.size());
        waitKey(0);
      }
    


};
  std_msgs::Int16MultiArray hsv_real;
  
  void CB_h(const std_msgs::Int16MultiArray::ConstPtr& hsv)
      {
        //hsv_real = *hsv;
        if (hsv->data.size() >= 12){
          hsv_real = *hsv;
        }
        //ROS_WARN_STREAM(hsv->data.size());
      }
   
   int main(int argc, char** argv)
   {
     ros::init(argc, argv, "image_converter");
     ImageConverter ic;
     ros::NodeHandle n;
     ros::Publisher image_color = n.advertise<std_msgs::ColorRGBA>("image_color", 1000);
     ros::Subscriber h = n.subscribe("h", 1000, CB_h);
    //  Mat foto_copy =  imread("/home/nick/Downloads/test.png", 1);
    //  imshow("original", foto_copy);
    //  waitKey(0);
    //   if(! foto_copy.data )                              // Check for invalid input
    //   {
    //     ROS_WARN_STREAM("Could not open or find the image");
    //   }
      //imshow("foto", foto_copy);
      //waitKey(0);
      // ic.DetectStrawberryTest(foto_copy);
     
     while (ros::ok()){
      
      
      if (hsv_real.data.size() >= 12){
        ic.hsv_configurator(hsv_real);
      }

      ros::spinOnce();
      
     
      //imshow("strawberry", ic.Berry);
      //imshow("strawberry", ic.Crown);
     }
     
     ros::spin();
     return 0;
   }