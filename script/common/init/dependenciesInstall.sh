#!/bin/bash

INFO "Install expect"
apt install expect -y

INFO "Install git"
apt install git -y

INFO "Install curl"
apt install curl -y

INFO "Install tools for extraction"
apt install unzip unrar rar p7zip -y

INFO "Install exfat support"
apt install exfat-utils -y

INFO "Install gdebi"
apt install gdebi-core -y

INFO "Install common libs"
apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y