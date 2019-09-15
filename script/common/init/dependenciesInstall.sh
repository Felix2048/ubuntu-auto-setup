#!/bin/bash

INFO "Install expect"
sudo apt install expect -y

INFO "Install git"
sudo apt install git -y

INFO "Install curl"
sudo apt install curl -y

INFO "Install tools for extraction"
sudo apt install unzip unrar rar p7zip -y

INFO "Install exfat support"
sudo apt install exfat-utils -y

INFO "Install gdebi"
sudo apt install gdebi-core -y

INFO "Install common libs"
sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 libxml2-utils -y

INFO "Install MS core fonts"
sudo apt install ttf-mscorefonts-installer -y
INFO "Update fonts"
sudo fc-cache -f -v