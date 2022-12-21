#pragma once
#include "include/Strawberry.cpp"

struct coordinate_sys_calculator
{
    static Strawberry CastStrawberryToRobot(Strawberry berry, Pose robot_to_camera_distance)
    {
        Strawberry output;

        output.physical_position.position.x = robot_to_camera_distance.position.x - berry.physical_position.position.x;
        output.physical_position.position.y = berry.physical_position.position.y + robot_to_camera_distance.position.y;
        output.physical_position.position.z = robot_to_camera_distance.position.z + berry.physical_position.position.z;
        output.physical_position.orientation.w = berry.physical_position.orientation.w - robot_to_camera_distance.orientation.w;

        return output;
    }
};
