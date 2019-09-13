#!/bin/bash

# wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O ${DownloadFolder}/code_latest_amd64.deb
# dpkg -i ${DownloadFolder}/code_latest_amd64.deb
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
rm microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt install apt-transport-https -y
apt update -y
apt install code -y