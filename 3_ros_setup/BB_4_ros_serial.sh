#!/bin/bash

cd ~/ros_catkin_ws/src/
git clone https://github.com/ros-drivers/rosserial.git

cd ~/ros_catkin_ws/
catkin_make_isolated
catkin_make_isolated --install


