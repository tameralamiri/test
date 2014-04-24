# Auther: Tamer Alamiri
# Email: tameralamiri@gmail.com
# Date: 2014-11-30
# this script is written to install ROS (Robot Operating System) on BeagleBone Black
# Powered By Debian OS
# Based on the work of Erle Robot
# http://erlerobotics.gitbooks.io/erlerobot/content/en/ros/tutorials/rosinstall.html
#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu wheezy main" > /etc/apt/sources.list.d/ros-latest.list'

wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

export LC_ALL="en_US.UTF-8"

sudo apt-get update

sudo apt-get install tree

pip install -U nose

sudo pip install -U rosdep rosinstall_generator wstool rosinstall

sudo rosdep init
rosdep update
