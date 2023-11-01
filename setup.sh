#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update

sudo apt install ros-kinetic-desktop-full -y
sudo apt install python3-catkin-pkg python3-rospkg -y
sudo apt install python3-rosdep -y
pip install numpy pyyaml pyside2 pyqtgraph matplotlib -y

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y

# workaround for issue on vm machine
sudo apt install --reinstall libxcb-xinerama0 -y

# echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
dir=$(pwd)
cp $dir/.bashrc ~/.bashrc
# bashrc="/home/brad/.bashrc"
# while IFS= read line
# do
#     echo "$line"
#     if [[ $line == *"source /opt/ros/"* ]]; 
#         then echo "IT IS SOURCING"
#     fi
# done <"$bashrc"

# setup ros
sudo rm -f /etc/ros/rosdep/sources.list.d/20-default.list
sudo rosdep init --reinstall
rosdep update --include-eol-distros