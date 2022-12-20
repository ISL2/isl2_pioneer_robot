#!/bin/bash
###########################################
# Installation Script for This Repository
# includes
# - AriaCoda -> Driver for Connecting Pioneer P3-DX Robot
# - init this catkin workspace and build scripts !
# Author : iTUTOR <tutorgaming@gmail.com>
# Date : 20-Dec-2022
###########################################
# Catkin Workspace initialization
catkin init
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release

# Dependency Installation
git submodule update --init --recursive
cd thirdparty/AriaCoda
make
sudo make install

# Build
cd ../..
catkin build
