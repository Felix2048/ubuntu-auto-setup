#!/bin/bash

echo "Upgreade system"
# apt upgrade -y

echo "Install git"
apt install git -y

echo "Install curl"
apt install curl -y

echo "Install vim"
apt install vim -y

echo "Install unzip"
apt install unzip -y

echo "Install unrar and rar"
apt install unrar rar -y

echo "Install kolourpaint4"
apt install kolourpaint4 -y

echo "Install shutter for screen shot"
apt install shutter -y

echo "Install tmux"
apt install tmux -y

echo "Install expect"
apt install expect -y

echo "Install ssh and config"
apt install ssh* openssh-*
update-rc.d ssh defaults
service sshd start

echo "Install vscode"
source ${SHELL_FOLDER}/script/util/vscodeInstall.sh


echo "Install sogou pinyin and fctix config"
source ${SHELL_FOLDER}/script/util/sogouPinyinInstall.sh