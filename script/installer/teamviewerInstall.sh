#!/bin/bash

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -P ${DownloadFolder}/teamviewer_latest_amd64.deb
dpkg -i ${DownloadFolder}/teamviewer_latest_amd64.deb
apt -f install