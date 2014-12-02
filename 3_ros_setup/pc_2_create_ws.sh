#!/bin/bash

# 1. Setup source list
source /opt/ros/indigo/setup.bash

# 2.Create ROS 
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace

cd ~/catkin_ws/
catkin_make

source devel/setup.bash
