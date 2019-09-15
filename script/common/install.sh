#!/bin/bash

INFO "Update apt source"
sudo apt update -y

INFO "Upgreade system"
sudo apt upgrade -y

INFO "Install vim"
sudo apt install vim -y
# INFO "Config vim"
# TODO

INFO "Install tmux"
sudo apt install tmux -y

INFO "Install xclip"
sudo apt install xclip -y

INFO "Install ssh"
sudo apt install ssh* openssh-* -y
INFO "Config ssh"
sudo update-rc.d ssh defaults
sudo service sshd start

INFO "Install chrome"
source ${SHELL_FOLDER}/script/installer/chromeInstall.sh

INFO "Install vscode"
source ${SHELL_FOLDER}/script/installer/vscodeInstall.sh

INFO "Install sogou pinyin and fctix config"
source ${SHELL_FOLDER}/script/installer/sogouPinyinInstall.sh

INFO "Install Teamviewer"
source ${SHELL_FOLDER}/script/installer/teamviewerInstall.sh

INFO "Install ShadowsocksR"
# sudo wget -N --no-check-certificate https://raw.githubusercontent.com/Felix2048/doubi/master/ssr.sh && chmod +x ssr.sh && bash ssr.sh
cp ${SHELL_FOLDER}/app-image/electron-ssr-0.2.6.AppImage ${HOME}/Desktop/electron-ssr.AppImage
chmod 777 ${HOME}/Desktop/electron-ssr.AppImage

INFO "Install and config zsh"
source ${SHELL_FOLDER}/script/installer/zsh/zshInstallAndConfig.sh
INFO "Install zsh plugin"
source ${SHELL_FOLDER}/script/installer/zsh/zshPluginInstall.sh

INFO "InSTALL ROS"
source ${SHELL_FOLDER}/script/installer/ROSInstall.sh

INFO "Install anaconda3"
source ${SHELL_FOLDER}/script/installer/anaconda3Install.sh

INFO "Install shutter for screen shot"
sudo apt install shutter -y

INFO "Install okular"
sudo apt install okular -y

INFO "Install kolourpaint4"
sudo apt install kolourpaint4 -y

INFO "Install filezilla"
sudo apt install filezilla -y

INFO "Install smplayer"
sudo apt install smplayer -y

INFO "Install gimp"
sudo apt install gimp -y

INFO "Install Typora"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb http://typora.io linux/'
sudo apt update -y
sudo apt install typora -y
sudo add-apt-repository -r 'deb http://typora.io linux/'

INFO "Install gparted"
sudo apt install gparted -y

INFO "Install y-ppa-manager"
sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt-get update
sudo apt-get install y-ppa-manager
sudo add-apt-repository -r ppa:webupd8team/y-ppa-manager

INFO  "Install docker"
sudo apt-get install docker.io -y
