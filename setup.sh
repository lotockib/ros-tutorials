#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt get update

sudo apt install ros-kinetic-full -y
sudo apt install python3-catkin-pkg python3-rospkg -y
sudo apt install python3-rosdep
pip install numpy pyyaml pyside2 pyqtgraph matplotlib

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

# workaround for issue on vm machine
sudo apt install --reinstall libxcb-xinerama0

# setup ros
sudo rosdep init --reinstall --include-eol-distros
# todo remove file?  argument
