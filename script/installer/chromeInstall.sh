#!/bin/bash

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ${DownloadFolder}/chrome_latest_amd64.deb
# dpkg -i ${DownloadFolder}/chrome_latest_amd64.deb
wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
apt update -y
apt install google-chrome-stable -y