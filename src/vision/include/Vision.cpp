#pragma once
#include "opencv2/opencv.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "Eigen/Dense"
#include "ros/ros.h"
#include "include/Strawberry.cpp"
#include <std_msgs/Int16MultiArray.h>


using namespace cv;

class Vision {
	private:
        SimpleBlobDetector::Params params;
        Ptr<SimpleBlobDetector> detector;
        std::vector<KeyPoint> keypoints;
        Mat Crown;
        Mat Berry;
        Scalar green_min = {38, 30, 30}; // was 42
        Scalar green_max = {58, 200, 150};
        Scalar red_min = {4, 0.5, 0.5};
        Scalar red_max = {39, 255, 255};
        const int x_crop_start = 250;
        const int x_crop_end = 850;
        const int y_crop_start = 290;
        const int y_crop_end = 1100;
        double angles[10];
        std::vector<Strawberry>* arr = new std::vector<Strawberry>(1);
        std::vector<Strawberry>* path;

    public:

        void hsv_configurator(std_msgs::Int16MultiArray hsv)
        {
            this->green_min[0] = hsv.data[0], hsv.data[1], hsv.data[2];
            this->green_max[0] = hsv.data[3], hsv.data[4], hsv.data[5];
            this->red_min[0] = hsv.data[6], hsv.data[7], hsv.data[8];
            this->red_max[0] = hsv.data[9], hsv.data[10], hsv.data[11];
        }

        Mat crop_image(Mat* image, int x_crop_start, int x_crop_end, int y_crop_start, int y_crop_end)
        {
            Mat cropped_image = *image;
            cropped_image = cropped_image(Range(x_crop_start, x_crop_end), Range(y_crop_start, y_crop_end));
            return cropped_image;
        }

        std::vector<Strawberry>* getStrawberryArray()
        {
            return arr;
        }

        void set_blob_params(float minThreshold, float maxThreshold, 
                            bool filterBycolor, float blobColor,
                            bool filterByArea, float minArea, float maxArea)
        {
            // Change thresholds
            params.minThreshold = minThreshold;
            params.maxThreshold = maxThreshold;

            params.filterByColor = filterBycolor;
            params.blobColor = blobColor;   

            // Filter by Area.
            params.filterByArea = filterByArea;
            params.minArea = minArea;
            params.maxArea = maxArea;

            // Filter by Circularity
            params.filterByCircularity = false;

            // Filter by Convexity
            params.filterByConvexity = false;

            // Filter by Inertia
            params.filterByInertia = false;

            detector = SimpleBlobDetector::create(params);
        }
        void set_blob_params(float minThreshold, float maxThreshold, 
                            bool filterBycolor, float blobColor,
                            bool filterByArea, float minArea, float maxArea, 
                            bool filterByCircularity, float minCircularity,
                            bool filterByConvexity, float minConvexity,
                            bool filterByInertia, float minInertiaRatio)
        {
            // Change thresholds
            params.minThreshold = minThreshold;
            params.maxThreshold = maxThreshold;

            params.filterByColor = filterBycolor;
            params.blobColor = blobColor;

            // Filter by Area.
            params.filterByArea = filterByArea;
            params.minArea = minArea;
            params.maxArea = maxArea;

            // Filter by Circularity
            params.filterByCircularity = filterByCircularity;
            params.minCircularity = minCircularity;

            // Filter by Convexity
            params.filterByConvexity = filterByConvexity;
            params.minConvexity = minConvexity;

            // Filter by Inertia
            params.filterByInertia = filterByInertia;
            params.minInertiaRatio = minInertiaRatio;

            detector = SimpleBlobDetector::create(params);
        }
        std::vector<KeyPoint> detect_berries(Mat* binary_image)
        {
            keypoints.clear();
            detector->detect(*binary_image, keypoints);
            return keypoints;
        }
        void DetectStrawberry(Mat input)
        {
            Vision visionStrawberry;
            Strawberry detected = Strawberry();
            Mat detected_strawberries = input;

            Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));
            // Thresh Crown channel and isolate Crown
            inRange(input, green_min, green_max, this->Crown);
            threshold(this->Crown, this->Crown, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
            cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
            cv::morphologyEx(this->Crown, this->Crown, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
            // Thresh Berry channel and isolate Berry
            inRange(input, red_min, red_max, this->Berry);
            threshold(this->Berry, this->Berry, 0, 255, cv::ThresholdTypes::THRESH_OTSU);

            cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
            cv::morphologyEx(this->Berry, this->Berry, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1), 4);
            Mat merge = this->Crown + this->Berry;

            Mat cropped_merge = visionStrawberry.crop_image(&merge, x_crop_start, x_crop_end, y_crop_start, y_crop_end);
            Mat cropped_image_berry = visionStrawberry.crop_image(&Berry, x_crop_start, x_crop_end, y_crop_start, y_crop_end);
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
                    double angle = std::abs(std::acos(belt_distance_to_center / crown_distance_to_center)); // for degrees * (180.0 / M_PI)
                    angles[i] = angle;
                    //ROS_WARN_STREAM(angles[0]);
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
                    strawberry.distance_to_belt = (float)keypoints_berry.at(i).size / 0.46875;
                    strawberry.distance_to_camera = 800 - ((float)keypoints_berry.at(i).size / 0.46875); // determin actual distance in mm
                    strawberry.physical_position.position.x = strawberry.berry_center_pixel_pos.x / 0.46875;
                    strawberry.physical_position.position.y = strawberry.berry_center_pixel_pos.y / 0.46875;
                    strawberry.physical_position.position.z = strawberry.distance_to_camera;
                    strawberry.physical_position.orientation.z = strawberry.angle_to_belt_dir;                                   
                                                              
                    for (int i = 0; i < arr->size(); i++)
                    {
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
};