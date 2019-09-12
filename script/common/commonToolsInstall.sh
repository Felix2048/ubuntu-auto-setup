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

echo "Install gdebi"
apt install gdebi-core -y

echo "Install okular"
apt install okular -y

echo "Install ssh and config"
apt install ssh* openssh-* -y
update-rc.d ssh defaults
service sshd start

echo "Install chrome"
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ${DownloadFolder}/chrome_latest_amd64.deb
# dpkg -i ${DownloadFolder}/chrome_latest_amd64.deb
wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
apt update
apt install google-chrome-stable -y 

echo "Install vscode"
source ${SHELL_FOLDER}/script/util/vscodeInstall.sh

echo "Install sogou pinyin and fctix config"
source ${SHELL_FOLDER}/script/util/sogouPinyinInstall.sh

echo "Install teamviewer"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O ${DownloadFolder}/teamviewer_latest_amd64.deb
dpkg -i ${DownloadFolder}/teamviewer_latest_amd64.deb
apt -f install