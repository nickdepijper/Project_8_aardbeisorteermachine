#pragma once
#include "opencv2/opencv.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "Eigen/Dense"
#include "ros/ros.h"

using namespace cv;

class Vision {
	private:
        SimpleBlobDetector::Params params;
        Ptr<SimpleBlobDetector> detector;
        std::vector<KeyPoint> keypoints;
    
    public:
        {
            ros::Publisher image_color = nhs_.advertise<bool>("Testing", 1000);
        }

        Mat crop_image(Mat* image, int x_crop_start, int x_crop_end, int y_crop_start, int y_crop_end)
        {
            Mat cropped_image = *image;
            cropped_image = cropped_image(Range(x_crop_start, x_crop_end), Range(y_crop_start, y_crop_end));
            return cropped_image;
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
};