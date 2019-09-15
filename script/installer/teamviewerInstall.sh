#!/bin/bash

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O ${DownloadFolder}/teamviewer_latest_amd64.deb
sudo dpkg -i ${DownloadFolder}/teamviewer_latest_amd64.deb
sudo apt -f install -y