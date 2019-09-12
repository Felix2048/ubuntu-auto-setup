#!/bin/bash

echo "Setup your sources.list: Setup your computer to accept software from packages.ros.org."
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo "Set up your keys"
apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

echo "Update apt"
apt update

echo "Installation (Desktop-Full Install)"
apt install ros-${ROSCode}-desktop-full

echo "Initialize rosdep"
rosdep init
rosdep update

echo "Environment setup"
echo "source /opt/ros/${ROSCode}/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo "source /opt/ros/${ROSCode}/setup.zsh" >> ~/.zshrc
source ~/.zshrc

echo "Dependencies for building packages"
apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
