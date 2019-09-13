#!/bin/bash

echo "Update apt source"
apt update -y

echo "Upgreade system"
apt upgrade -y

INFO "Install vim"
apt install vim -y
# INFO "Config vim"
# TODO

INFO "Install tmux"
apt install tmux -y

INFO "Install xclip"
apt install xclip -y

INFO "Install ssh"
apt install ssh* openssh-* -y
INFO "Config ssh"
update-rc.d ssh defaults
service sshd start

INFO "Install chrome"
source ${SHELL_FOLDER}/script/installer/chromeInstall.sh

INFO "Install vscode"
source ${SHELL_FOLDER}/script/installer/vscodeInstall.sh

INFO "Install sogou pinyin and fctix config"
source ${SHELL_FOLDER}/script/installer/sogouPinyinInstall.sh

INFO "Install Teamviewer"
source ${SHELL_FOLDER}/script/installer/teamviewerInstall.sh

INFO "Install ShadowsocksR"
# wget -N --no-check-certificate https://raw.githubusercontent.com/Felix2048/doubi/master/ssr.sh && chmod +x ssr.sh && bash ssr.sh
cp ${SHELL_FOLDER}/app-image/electron-ssr-0.2.6.AppImage ${HOME}/Desktop/electron-ssr.AppImage
chmod +x ${HOME}/electron-ssr.AppImage

INFO "Install zsh"
source ${SHELL_FOLDER}/script/installer/zsh/zshInstallAndConfig.sh
INFO "Install zsh plugin"
source ${SHELL_FOLDER}/script/installer/zsh/zshPluginInstall.sh

INFO "InSTALL ROS"
source ${SHELL_FOLDER}/script/installer/ROSInstall.sh

INFO "Install anaconda3"
source ${SHELL_FOLDER}/script/installer/anaconda3Install.sh

INFO "Install shutter for screen shot"
apt install shutter -y

INFO "Install okular"
apt install okular -y

INFO "Install kolourpaint4"
apt install kolourpaint4 -y

INFO "Install filezilla"
apt install filezilla -y

INFO "Install smplayer"
apt install smplayer -y

INFO "Install gimp"
apt install gimp -y

INFO "Install Typora"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE -y
add-apt-repository 'deb http://typora.io linux/' -y
apt update -y
apt install typora -y

INFO "Install gparted"
apt install gparted -y