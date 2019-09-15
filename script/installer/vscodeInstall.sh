#!/bin/bash

# wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O ${DownloadFolder}/code_latest_amd64.deb
# sudo dpkg -i ${DownloadFolder}/code_latest_amd64.deb
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo rm microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y