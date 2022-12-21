#pragma once
#include <iostream>
#include <vector>
#include "ros/ros.h"
#include "Strawberry.cpp"

class pickPosition
{
private:
    Strawberry random_berry;
    std::vector<Strawberry> last_pos_vector;
    bool last_berry_done = false;
    int i = 0;
public:

    Strawberry returnStrawberryFunc(std::vector<Strawberry> pos_vector, bool done)
    {
        if (last_pos_vector.empty()){
            last_pos_vector.push_back(random_berry);
        }
        
        if (pos_vector.at(0).physical_position.position.x == last_pos_vector.at(0).physical_position.position.x and i ==0){
            ROS_WARN_STREAM("New position vector is the same as old position vector, waiting for new position vector");
        }
        else if(pos_vector.size() < 5){
            ROS_WARN_STREAM("Position vector does not have 5 positions");
        }
        else {
            if(done){   
                if(i < 4){
                    i++;
                    return pos_vector.at(i-1);
                }
                else if(i == 4){
                    ROS_WARN_STREAM("Last position has been send");
                    last_berry_done = true;
                    i = 0;
                    return pos_vector.at(4);
                
                }      
            } 
        }
        last_pos_vector = pos_vector;
    }

    bool get_processing_ended(){
        if(last_berry_done){
          last_berry_done = false; 
          return true; 
        } 
        else return false;
    }
};