#

#!/bin/bash

export LC_ALL="en_US.UTF-8"

mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws

rosinstall_generator ros_comm --rosdistro hydro --deps --wet-only > hydro-barebones-full-wet.rosinstall
wstool init src hydro-barebones-full-wet.rosinstall

cd src
wstool rm roslisp
rm -rf roslisp

cd ..
rosdep install --from-paths src --ignore-src --rosdistro hydro -y -r --os=debian:wheezy

cd ~/ros_catkin_ws
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release
echo "source ~/ros_catkin_ws/install_isolated/setup.bash" >> ~/.bashrc

