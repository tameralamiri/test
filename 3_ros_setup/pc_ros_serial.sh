#!/bin/bash

cd ~/catkin_ws/src/
git clone https://github.com/ros-drivers/rosserial.git
cd ~/catkin_ws/
catkin_make
catkin_make install
