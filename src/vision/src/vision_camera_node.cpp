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
#include "include/Strawberry.cpp"
#include "include/Vision.cpp"
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
  int counter = 0;
  double angles[10];
  std::vector<Strawberry>* arr = new std::vector<Strawberry>(1);

public:
  cv_bridge::CvImagePtr cv_ptr;
  Mat hsv_image;
  Mat Crown;
  Mat Berry;
  Mat image_test;
  Scalar green_min_copy = {38, 30, 30}; // was 42
  Scalar green_max_copy = {58, 200, 150};
  Scalar red_min_copy = {4, 0.5, 0.5};
  Scalar red_max_copy = {39, 255, 255};
  const int x_crop_start = 250;
  const int x_crop_end = 850;
  const int y_crop_start = 290;
  const int y_crop_end = 1100;

  ImageConverter()
      : it_(nh_)
  {
    // Subscrive to input video feed and publish output video feed
    image_sub_ = it_.subscribe("/galaxy_camera/image_raw", 1,
                               &ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video", 1);

    // cv::namedWindow(OPENCV_WINDOW);
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
    if (this->counter == 0)
    {
      this->DetectStrawberry(this->hsv_image);
      this->counter = 0;
    }
    else
    {
      imshow("test", this->hsv_image);
    }
    // this->counter++;

    // Update GUI Window
    // cv::imshow(OPENCV_WINDOW, cv_ptr->image);
   
    cv::waitKey(3);

    // Output modified video stream
    //image_pub_.publish(cv_ptr->toImageMsg());
  }

  std_msgs::ColorRGBA get_avarage_color()
  {
    return avarage_RGBA_colors;
  }

  void DetectStrawberry(Mat input)
  {
    Vision visionStrawberry;
    Strawberry detected = Strawberry();
    Mat detected_strawberries = input;

    Scalar green_min(44, 199, 247);
    Scalar green_max(58, 255, 255);

    Scalar red_min(4, 255, 247);
    Scalar red_max(53, 255, 255);

    Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));
    // Thresh Crown channel and isolate Crown
    inRange(input, green_min_copy, green_max_copy, this->Crown);
    threshold(this->Crown, this->Crown, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
    cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
    cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
    // Thresh Berry channel and isolate Berry
    inRange(input, red_min_copy, red_max_copy, this->Berry);
    threshold(this->Berry, this->Berry, 0, 255, cv::ThresholdTypes::THRESH_OTSU);

    cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
    cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1), 4);
    Mat merge = this->Crown + this->Berry;
    //imshow("crown", this->Crown);
    //imshow("berry", this->Berry);
    
    Mat cropped_merge = visionStrawberry.crop_image(&merge, x_crop_start, x_crop_end, y_crop_start, y_crop_end);
    Mat cropped_image_berry = visionStrawberry.crop_image(&Berry, x_crop_start, x_crop_end,y_crop_start, y_crop_end);
    Mat cropped_image_crown = visionStrawberry.crop_image(&Crown, x_crop_start, x_crop_end, y_crop_start, y_crop_end);
    imshow("cropped?", cropped_merge);
    
    std::vector<KeyPoint> keypoints_berry;
    std::vector<KeyPoint> keypoints_crown;

    visionStrawberry.set_blob_params(200, 255, false, 0, true, 800, 30000);
    keypoints_berry = visionStrawberry.detect_berries(&cropped_image_berry);

    visionStrawberry.set_blob_params(200, 255, false, 0, true, 400, 20000);
    keypoints_crown = visionStrawberry.detect_berries(&cropped_image_crown);
  
    if (keypoints_berry.size() != keypoints_crown.size())
    {
      ROS_WARN_STREAM("Amount berries does not equal amount crowns");
    }
    else
    {
      for (int i = 0; i < keypoints_berry.size(); i++)
      {
        line(cropped_merge, keypoints_berry.at(i).pt, keypoints_crown.at(i).pt, cv::Scalar(0, 0, 0), 2);
        double crown_distance_to_center = glm::distance(glm::dvec2(keypoints_berry.at(i).pt.x, keypoints_berry.at(i).pt.y), glm::dvec2(keypoints_crown.at(i).pt.x, keypoints_crown.at(i).pt.y));
        double belt_distance_to_center = glm::distance(glm::dvec2(keypoints_berry.at(i).pt.x, keypoints_berry.at(i).pt.y), glm::dvec2(keypoints_crown.at(i).pt.x, keypoints_berry.at(i).pt.y));
        double angle = std::abs(std::acos(belt_distance_to_center / crown_distance_to_center)) * (180.0 / M_PI);
        angles[i] = angle;
        ROS_WARN_STREAM(angles[0]);
        // x and y crop offsets compensate for cropping and opencv coordinate switch (x,y) = (y,x)
        cv::Point upper_left;
        upper_left.x = keypoints_berry.at(i).pt.x - (keypoints_berry.at(i).size / 2) + y_crop_start;
        upper_left.y = keypoints_berry.at(i).pt.y - (keypoints_berry.at(i).size / 2) + x_crop_start;

        cv::Point lower_right;
        lower_right.x = keypoints_berry.at(i).pt.x + (keypoints_berry.at(i).size / 2) + y_crop_start;
        lower_right.y = keypoints_berry.at(i).pt.y + (keypoints_berry.at(i).size / 2) + x_crop_start;
      
        rectangle(detected_strawberries, upper_left, lower_right, cv::Scalar(0, 0, 255));
        imshow("Detected strawberries", detected_strawberries);

        Strawberry strawberry;
        strawberry.berry_center_pixel_pos = glm::dvec2(keypoints_berry.at(i).pt.x, keypoints_berry.at(i).pt.y);
        strawberry.crown_center_pixel_pos = glm::dvec2(keypoints_crown.at(i).pt.x, keypoints_crown.at(i).pt.y);
        strawberry.angle_to_belt_dir = angle;
        strawberry.distance_to_belt = (float)keypoints_berry.size() / 0.46875;
        strawberry.distance_to_camera = 800 - ((float)keypoints_berry.size() / 0.46875); //determin actual distance in mm

        for (int i =0; i<arr->size(); i++){
          if (strawberry.berry_center_pixel_pos.x > arr->at(i).berry_center_pixel_pos.x && strawberry.berry_center_pixel_pos.x < (arr->at(i).berry_center_pixel_pos.x + 10))
            if (strawberry.berry_center_pixel_pos.y > (arr->at(i).berry_center_pixel_pos.x - 5) && strawberry.berry_center_pixel_pos.y < (arr->at(i).berry_center_pixel_pos.y + 5))
              arr->push_back(strawberry);
        }
      }
    }

    drawKeypoints(cropped_merge, keypoints_berry, cropped_merge, Scalar(0, 0, 255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    drawKeypoints(cropped_merge, keypoints_crown, cropped_merge, Scalar(0, 0, 255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    imshow("keypoints", cropped_merge);
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
    this->green_min_copy[0] = hsv.data[0], hsv.data[1], hsv.data[2];
    this->green_max_copy[0] = hsv.data[3], hsv.data[4], hsv.data[5];
    this->red_min_copy[0] = hsv.data[6], hsv.data[7], hsv.data[8];
    this->red_max_copy[0] = hsv.data[9], hsv.data[10], hsv.data[11];
    ROS_WARN_STREAM("gmi: " << this->green_min_copy << "gma: " << this->green_max_copy);
  }

  void DetectStrawberryTest(Mat input)
  {
    Vision visionStrawberry;
    visionStrawberry.set_blob_params (200, 255, false, 0, true, 800, 30000);

    

    std::vector<Mat> splitImage;
    split(input, splitImage);
    Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));

    // Set up the detector with default parameters.
    std::vector<KeyPoint> keypoints_berry;
    std::vector<KeyPoint> keypoints_crown;

    visionStrawberry.set_blob_params(200, 255, false, 0, true, 800, 30000);
    keypoints_berry = visionStrawberry.detect_berries(&this->Berry);

    Mat im_with_keypoints;
    drawKeypoints(splitImage.at(2), keypoints_berry, im_with_keypoints, Scalar(0, 0, 255), DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    imshow("keypoints", im_with_keypoints);
    imshow("image r", splitImage.at(0));
    imshow("image g", splitImage.at(1));
    imshow("image b", splitImage.at(2));
    ROS_WARN_STREAM(keypoints_berry.size());
    waitKey(0);
  }
};

std_msgs::Int16MultiArray hsv_real;

void CB_h(const std_msgs::Int16MultiArray::ConstPtr &hsv)
{
  if (hsv->data.size() >= 12)
  {
    hsv_real = *hsv;
  }
  // ROS_WARN_STREAM(hsv->data.size());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;
  ros::NodeHandle n;
  ros::Publisher image_color = n.advertise<std_msgs::ColorRGBA>("image_color", 1000);
  ros::Subscriber h = n.subscribe("h", 1000, CB_h);

  while (ros::ok())
  {
    // Mat foto_copy = imread("/home/nick/Downloads/test.png", 1);
    // imshow("original", foto_copy);
    // //waitKey(0);
    // if (!foto_copy.data) // Check for invalid input
    // {
    //   ROS_WARN_STREAM("Could not open or find the image");
    // }
    // imshow("foto", foto_copy);
    // //waitKey(0);
    // ic.DetectStrawberryTest(foto_copy);

    if (hsv_real.data.size() >= 12)
    {
      ic.hsv_configurator(hsv_real);
    }

    ros::spinOnce();
  }

  ros::spin();
  return 0;
}