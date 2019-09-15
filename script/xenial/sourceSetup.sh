#!/bin/bash

INFO "Back up source.list as source.list.bak"
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak

INFO "Change to ustc source"
sudo bash -c "cat > /etc/apt/sources.list" << EOF
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
EOF

sudo bash -c "cat > /etc/apt/sources.list.d/ubuntukylin.list" << EOF
deb http://archive.ubuntukylin.com/ubuntukylin xenial main
EOF

INFO "Add hosts for Google"
sudo cp /etc/hosts /etc/hosts.bak
sudo bash -c "echo '# Hosts for Google' >> /etc/hosts"
sudo bash -c "echo '203.208.41.32 dl.google.com' >> /etc/hosts"
sudo bash -c "echo '203.208.41.32 dl-ssl.google.com' >> /etc/hosts"
sudo bash -c "echo '203.208.41.32 groups.google.com' >> /etc/hosts"
sudo bash -c "echo '203.208.41.32 goo.gl' >> /etc/hosts"
sudo bash -c "echo '203.208.41.32 appengine.google.com' >> /etc/hosts"

INFO "Fixing unsigned sources"
sudo ${SHELL_FOLDER}/script/util/launchpad-getkeys

