#include <iostream>
#include <cmath>
#include <vector>
#include "geometry_msgs/Pose.h"

struct path_planner_util
{

static bool in_this_vector(int i, std::vector<int> input_vect){
    bool in_vect = false;
    for(int j; j < input_vect.size();j++){
        if (i==input_vect.at(j)) in_vect = true; 
    }
    return in_vect;
}

// Function to calculate distance for floats or dvec2 or dvec3
float distance(geometry_msgs::Pose p1, geometry_msgs::Pose p2)
{
    return sqrt(pow(p2.position.x - p1.position.x, 2) + pow(p2.position.y - p1.position.y, 2) * 1.0);
}

};