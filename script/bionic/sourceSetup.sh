#!/bin/bash

INFO "Back up source.list as source.list.bak"
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak

INFO "Change to ustc source"
sudo cat > /etc/apt/sources.list << EOF
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
EOF

sudo cat > /etc/apt/sources.list.d/ubuntukylin.list << EOF
deb http://archive.ubuntukylin.com/ubuntukylin bionic main
EOF

INFO "Add hosts for Google"
sudo cp /etc/hosts /etc/hosts.bak
sudo echo "# Hosts for Google" >> /etc/hosts
sudo echo "203.208.41.32 dl.google.com" >> /etc/hosts
sudo echo "203.208.41.32 dl-ssl.google.com" >> /etc/hosts
sudo echo "203.208.41.32 groups.google.com" >> /etc/hosts
sudo echo "203.208.41.32 goo.gl" >> /etc/hosts
sudo echo "203.208.41.32 appengine.google.com" >> /etc/hosts

INFO "Fixing unsigned sources"
sudo ${SHELL_FOLDER}/script/util/launchpad-getkeys

