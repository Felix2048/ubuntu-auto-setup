#!/bin/bash

echo "Install dependencies"
apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

echo "Download Anaconda3"
AnacondaDownloadLink=https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
wget ${AnacondaDownloadLink} -O ${DownloadFolder}/anaconda3.sh

echo "Install Anaconda3"
bash ${DownloadFolder}/anaconda3.sh

echo "Setup mirrors for conda"
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes