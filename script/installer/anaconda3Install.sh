#!/bin/bash

INFO "Download Anaconda3"
AnacondaDownloadLink=https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
wget ${AnacondaDownloadLink} -O ${DownloadFolder}/anaconda3.sh

INFO "Install Anaconda3"
bash ${DownloadFolder}/anaconda3.sh

INFO "Setup mirrors for conda"
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --set show_channel_urls yes