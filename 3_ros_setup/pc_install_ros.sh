# Auther: Tamer Alamiri
# Email: tameralamiri@gmail.com
# Date 2014-11-30

# This script to install ROS indingo on PC ubuntu 14.04


#!/bin/bash


# 1. Setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'

# 2.Setup keys
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

# 3.Installation
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full

# 4.Initialize rosdep
sudo rosdep init
rosdep update

# 5. Environment setup
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc

# 6. Getting rosinstall
sudo apt-get install python-rosinstall
