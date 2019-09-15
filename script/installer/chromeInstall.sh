#!/bin/bash

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ${DownloadFolder}/chrome_latest_amd64.deb
# sudo dpkg -i ${DownloadFolder}/chrome_latest_amd64.deb
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
sudo wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update -y
sudo apt install google-chrome-stable -y