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
# wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O ${DownloadFolder}/code_latest_amd64.deb
# dpkg -i ${DownloadFolder}/code_latest_amd64.deb
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt install apt-transport-https
apt update
apt install code

