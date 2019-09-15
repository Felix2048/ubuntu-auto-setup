#!/bin/bash

INFO "Setup your sources.list: Setup your computer to accept software from packages.ros.org."
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

INFO "Set up your keys"
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

INFO "Update apt"
sudo apt update

INFO "Installation (Desktop-Full Install)"
sudo apt install ros-${ROSCode}-desktop-full -y

INFO "Initialize rosdep"
sudo rosdep init
rosdep update

INFO "Environment setup"
echo "source /opt/ros/${ROSCode}/setup.bash" >> ~/.bashrc
echo "source /opt/ros/${ROSCode}/setup.zsh" >> ~/.zshrc

INFO "Dependencies for building packages"
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y
