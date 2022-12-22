#include <iostream>
#include <cmath>
#include <vector>
#include <chrono>
#include "glm/glm.hpp"
#include "Strawberry.cpp"
#include "geometry_msgs/Pose.h"
#include "opencv2/opencv.hpp"
#include "ros/ros.h"
#include "Util/path_planner_util.cpp"
using namespace std;

class Tree_node{
    public:
        float distance_to_parent;
        Strawberry which_berry;
        int pose_in_org_vect;
        std::vector<int> berries_already_in_branch;
        std::vector<bool> path_to_node; // path with bools if true then is left child from parent
        Tree_node * left_child;
        Tree_node * right_child;
};

class Path_planner{
    public:
    Path_planner(){
        
        //smallest_distance = 1000.0;
        gripper_pose.position.x = 900.0;   
        gripper_pose.position.y = 600.0; 
        gripper_pose.position.z = 100.0; 
        gripper_pose.orientation.w = 0.0;
        gripper_pose.orientation.x = 0.0;
        gripper_pose.orientation.y = 0.0;
        gripper_pose.orientation.z = 0.0;
        empty_pose.position.x = 0.0;   
        empty_pose.position.y = 0.0; 
        empty_pose.position.z = 0.0; 
        empty_pose.orientation.w = 0.0;
        empty_pose.orientation.x = 0.0;
        empty_pose.orientation.y = 0.0;
        empty_pose.orientation.z = 0.0;
    }

    void set_path_planner_pointer(vector<Strawberry>* detected_strawberrys){
        detected_strawberries_list = detected_strawberrys;
        for (int i = 1; i < detected_strawberries_list->size(); i++){
            for (int j = 1; j < detected_strawberries_list->size(); j++){
                    berry_distances[i][j] = 0;
            }
        }   
    }

    // Function to be called by main program 
    vector<Strawberry> plan_path(){
        for (int i = 0; i<detected_strawberries_list->size(); i++){
            detected_strawberries_list->at(i).physical_position.position.x += 800;
        }
        std::cout <<"amount of berries to pick: "<< detected_strawberries_list->size() << endl;
        Strawberrys_to_pick.clear();
        std::vector<bool> path_to_last_node;
        auto start = chrono::high_resolution_clock::now();
        Tree_node* root = createNode(berry_distances[0][0], 0, path_to_last_node, false);
        search_first_strawberry();
        temp_copy = detected_strawberries_list->at(0);
        detected_strawberries_list->at(0) = detected_strawberries_list->at(berry_closest_to_gripper);
        detected_strawberries_list->at(berry_closest_to_gripper) = temp_copy;

        for (int i = 0; i < detected_strawberries_list->size(); i++){
            for (int j = 0; j < detected_strawberries_list->size(); j++){
                    berry_distances[i][j] = util.distance(detected_strawberries_list->at(i).physical_position, detected_strawberries_list->at(j).physical_position);
                    // std::cout << setprecision(3)<< "\t" << berry_distances[i][j];
                    ROS_WARN_STREAM(setprecision(3)<< "\t" << berry_distances[i][j]);
            }
            // std::cout << endl;
            ROS_WARN_STREAM(" ");
        }

        createTree(root);
        //printTree(root);
        //printTreeToScreen();
        search_strawberries_to_pick(root, calculate_shortest_paths(root));



        auto stop = chrono::high_resolution_clock::now();
        auto duration = chrono::duration_cast<std::chrono::microseconds>(stop - start);
        std::cout << "Time taken by function: " << duration.count() << " microseconds" << endl;
        for (int i = 0; i<detected_strawberries_list->size(); i++){
            detected_strawberries_list->at(i).physical_position.position.x -= 800;
        }
        for (int i = 0; i<Strawberrys_to_pick.size(); i++){
            Strawberrys_to_pick.at(i).physical_position.position.x -= 800;
        }
        return Strawberrys_to_pick;
    }



    private:
    vector<Strawberry>* detected_strawberries_list;
    Strawberry temp_copy;
    geometry_msgs::Pose gripper_pose;
    vector<Strawberry> Strawberrys_to_pick; //vector which is to be returned by main function
    int berry_closest_to_gripper;
    float berry_distances[20][20];
    vector<float> berry_distances_in_tree;
    float berry_distances_in_tree_arr[16][5];
    vector<float> sums;
    vector<Tree_node*> bottom_nodes;
    struct path_planner_util util;
    geometry_msgs::Pose empty_pose;
 
    // Function to search for the strawberry to begin picking 
    void search_first_strawberry()
    {
        float smallest_distance = 100000.0;
        for (int i = 0; i< detected_strawberries_list->size(); i++){
            if(util.distance(detected_strawberries_list->at(i).physical_position, gripper_pose) < smallest_distance){
                smallest_distance = util.distance(detected_strawberries_list->at(i).physical_position, gripper_pose);
                berry_closest_to_gripper = i;
            }
        }
    }

    
    // Search in a row of the array what the smallest value is
    int search_for_shortest_path(int row, std::vector<int> berries_not_to_pick){
        int index = 0;
        float smallest_distance_in_row = float(1000000.0);
        for(int i = 0; i < detected_strawberries_list->size(); i++){
                if (berry_distances[row][i] < smallest_distance_in_row 
                    and berry_distances[row][i] != 0 
                    and !util.in_this_vector(i,berries_not_to_pick))
                {
                    smallest_distance_in_row = berry_distances[row][i];
                    index = i;
                }
        }
        return index;
    }

    // Search in a row of the array what the second smallest value is
    int search_for_second_shortest_path(int row, float smallest_distance, std::vector<int> berries_not_to_pick){
        int index = 0;
        float second_smallest_distance_in_row = 1000000;
        for(int i = 0; i < detected_strawberries_list->size(); i++){
                if (berry_distances[row][i] < second_smallest_distance_in_row 
                    and berry_distances[row][i] > smallest_distance 
                    and berry_distances[row][i] != 0 
                    and !util.in_this_vector(i,berries_not_to_pick))
                {
                    second_smallest_distance_in_row = berry_distances[row][i];
                    index = i;
                }
            }
        return index;
    } 

    // Function to make a new Tree_node with values inside
    Tree_node* createNode(float distance,int berry_pos, vector<bool> parent_path ,bool left_child){
        Tree_node* new_node = new Tree_node();
        new_node->path_to_node = parent_path;
        new_node->path_to_node.push_back(left_child);
        new_node->distance_to_parent = distance;
        new_node->pose_in_org_vect = berry_pos;
        new_node->which_berry = detected_strawberries_list->at(berry_pos);
        new_node->left_child = new_node->right_child = nullptr;
    }

    //makes the binairy tree with 5 layers
    void createTree(Tree_node* root){
        // Make the root (First node)
        root->berries_already_in_branch.push_back(0);
        // create the other layers
        createChildNodes(root);

        // level 2
        createChildNodes(root->left_child);
        createChildNodes(root->right_child);

        // level 3
        createChildNodes(root->left_child->left_child);
        createChildNodes(root->left_child->right_child);
        createChildNodes(root->right_child->left_child);
        createChildNodes(root->right_child->right_child);

        // level 4
        createChildNodes(root->left_child->left_child->left_child);
        createChildNodes(root->left_child->left_child->right_child);
        createChildNodes(root->left_child->right_child->left_child);
        createChildNodes(root->left_child->right_child->right_child);
        createChildNodes(root->right_child->left_child->left_child);
        createChildNodes(root->right_child->left_child->right_child);
        createChildNodes(root->right_child->right_child->left_child);
        createChildNodes(root->right_child->right_child->right_child);
    }

    // Make two child nodes for parent, one left and one right. 
    void createChildNodes(Tree_node* parent)
    {   
        int shortest_path = 0;
        int second_shortest_path = 0;
        if (parent == nullptr){
            ROS_WARN_STREAM("returned");
            return;
        }

        // Search in array with distances for smallest and second smallest value
        for (int i = 0; i<parent->berries_already_in_branch.size(); i++){
            ROS_WARN_STREAM("Berries already in branch" << parent->berries_already_in_branch.at(i));
        }
        shortest_path = search_for_shortest_path(parent->pose_in_org_vect, parent->berries_already_in_branch);
        second_shortest_path = search_for_second_shortest_path(parent->pose_in_org_vect,berry_distances[shortest_path][parent->pose_in_org_vect],parent->berries_already_in_branch);

        // Create a left and right child
        parent->left_child = createNode(berry_distances[shortest_path][parent->pose_in_org_vect], shortest_path,parent->path_to_node,1);
        parent->right_child = createNode(berry_distances[second_shortest_path][parent->pose_in_org_vect], second_shortest_path,parent->path_to_node,0);

        // Update vector so berries dont get used twice
        parent->left_child->berries_already_in_branch = parent->right_child->berries_already_in_branch = parent->berries_already_in_branch;
        parent->left_child->berries_already_in_branch.push_back(shortest_path);
        parent->right_child->berries_already_in_branch.push_back(second_shortest_path);
    }

    // get the branch with the lowest value thus also the shortest path
    int calculate_shortest_paths(Tree_node* root){
        int index = 0; //scorpion
        float shortest_path = 1000000.0;
        sums.clear();
        calculate_sums_of_roots(root,0);
        for (int i = 0; i < sums.size(); i++){
            if (sums.at(i) < shortest_path) {
                shortest_path = sums.at(i);
                index = i;
            }
            // std::cout << sums.at(i) << endl;
        }
        // std::cout << "Kortste weg totaal is: " << shortest_path << endl;
        return index;
    } 

    // traverses the tree and adds up the values in each individual branch
    void calculate_sums_of_roots(Tree_node* root, float sum){
        if (root == nullptr) return;
        float new_sum = sum + root->distance_to_parent;
        if (root->left_child == nullptr or root->right_child == nullptr){
           sums.push_back(new_sum); 
           bottom_nodes.push_back(root);
        } 
        calculate_sums_of_roots(root->left_child, new_sum);
        calculate_sums_of_roots(root->right_child, new_sum);
    }


    bool is_empty(Strawberry berry){
        return berry.physical_position == empty_pose;
    }

    // fills the final vector contianing the berries to pick
    void search_strawberries_to_pick(Tree_node* root, int bottom_level_node){
        // std::cout << "node om te vinden: "<< bottom_level_node << endl;
        std::vector<bool> path_to_bottom_node = bottom_nodes.at(bottom_level_node)->path_to_node;
        Tree_node* temp_root = root;
        Strawberrys_to_pick.push_back(temp_root->which_berry);
        detected_strawberries_list->at(temp_root->pose_in_org_vect).physical_position = empty_pose;
        for (int i = 1; i < path_to_bottom_node.size(); i++){
            temp_root = add_berry_to_vec(temp_root,path_to_bottom_node.at(i)); // makes new parent pointer
            std::cout << path_to_bottom_node.at(i) << endl;
        }
        // //laat eerst de hele vector zien
        // ROS_WARN_STREAM("Vector zonder verwijderde aardbeien");
        // for(int x= 0; x<detected_strawberries_list->size();x++){
        //     std::cout << "berry " << x << endl << detected_strawberries_list->at(x).physical_position.position; 
        // }


        // alle posities met x,y,z,w = 0 uit de vector halen
        for (int j=detected_strawberries_list->size()-1; j>=0;--j){
            std::cout << j;
            if (detected_strawberries_list->at(j).physical_position == empty_pose){
               detected_strawberries_list->erase(detected_strawberries_list->begin()+j);
               std::cout << "berries deleted at index: " << j << endl; 
            } 
        }
        // vector<Strawberry>::iterator detected_strawberries_list_2;
        // detected_strawberries_list_2 = std::remove_if(detected_strawberries_list->begin(), detected_strawberries_list->end(), is_empty);

        // ROS_WARN_STREAM("Vector na verwijderen aardbeien");
        // for(int x= 0; x<detected_strawberries_list->size();x++){
        //     std::cout << "berry " << x << endl << detected_strawberries_list->at(x).physical_position.position; 
        // }
    }



    // looks if it needs to add right or left child to vector with berries to pick
    Tree_node* add_berry_to_vec(Tree_node* root, bool to_left){
        if (to_left){
            Strawberrys_to_pick.push_back(root->left_child->which_berry);
            detected_strawberries_list->at(root->left_child->pose_in_org_vect).physical_position = empty_pose;
            return root->left_child;
        }
        else{
            Strawberrys_to_pick.push_back(root->right_child->which_berry);
            detected_strawberries_list->at(root->right_child->pose_in_org_vect).physical_position = empty_pose;
            return root->right_child;
        }
    }

    // //use only if there is need for output on the screen
    // void printTree(Tree_node* root){
    //     if (root == nullptr) return;
    //     berry_distances_in_tree.push_back(root->distance_to_parent);
    //     printTree(root->left_child);
    //     printTree(root->right_child);
    // }

    // //comment this function if there is no need to have output on the screen
    // void printTreeToScreen(){
    //     std::cout << setprecision(3) << "\t" << "\t" <<"\t" << "\t" << berry_distances_in_tree.at(0) << endl;
    //     std::cout << setprecision(3) << "\t" << "\t" << "\t" << "  " << 
    //                                  berry_distances_in_tree.at(1) 
    //                                  <<"\t" <<
    //                                  berry_distances_in_tree.at(16) 
    //                                  << endl;

    //     std::cout << setprecision(3) << "\t" << "\t" << "    " 
    //                                  << berry_distances_in_tree.at(2) << " " 
    //                                  << berry_distances_in_tree.at(9) << " " 
    //                                  << berry_distances_in_tree.at(17) << " " 
    //                                  << berry_distances_in_tree.at(24) << " "
    //                                  << endl;

    //     std::cout << setprecision(3) << "\t" << "\t"
    //                                  << berry_distances_in_tree.at(3) << " " 
    //                                  << berry_distances_in_tree.at(6) << " " 
    //                                  << berry_distances_in_tree.at(10) << " " 
    //                                  << berry_distances_in_tree.at(13) << " "
    //                                  << berry_distances_in_tree.at(18) << " " 
    //                                  << berry_distances_in_tree.at(21) << " " 
    //                                  << berry_distances_in_tree.at(25) << " " 
    //                                  << berry_distances_in_tree.at(28) << " " 
    //                                  << endl;

    //     std::cout << setprecision(3) << berry_distances_in_tree.at(4) << " " 
    //                                  << berry_distances_in_tree.at(5) << " " 
    //                                  << berry_distances_in_tree.at(7) << " " 
    //                                  << berry_distances_in_tree.at(8) << " "
    //                                  << berry_distances_in_tree.at(11) << " " 
    //                                  << berry_distances_in_tree.at(12) << " " 
    //                                  << berry_distances_in_tree.at(14) << " " 
    //                                  << berry_distances_in_tree.at(15) << " " 
    //                                  << berry_distances_in_tree.at(19) << " " 
    //                                  << berry_distances_in_tree.at(20) << " " 
    //                                  << berry_distances_in_tree.at(22) << " " 
    //                                  << berry_distances_in_tree.at(23) << " " 
    //                                  << berry_distances_in_tree.at(26) << " " 
    //                                  << berry_distances_in_tree.at(27) << " " 
    //                                  << berry_distances_in_tree.at(29) << " " 
    //                                  << berry_distances_in_tree.at(30) << " "  
    //                                  << endl;

    //     //std::cout << root->left_child->left_child->left_child->left_child->berries_already_in_branch.size();
    //     std::cout << endl << endl;
    // }
};

