#!/bin/bash

echo "Back up source.list as source.list.bak"
mv /etc/apt/sources.list /etc/apt/sources.list.bak

echo "Change to ustc source"
cat > /etc/apt/sources.list << EOF
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

cat > /etc/apt/sources.list.d/ubuntukylin.list << EOF
deb http://archive.ubuntukylin.com/ubuntukylin xenial main
EOF

echo "Add hosts for Google"
cp /etc/hosts /etc/hosts.bak
echo "# Hosts for Google" >> /etc/hosts
echo "203.208.41.32 dl.google.com" >> /etc/hosts
echo "203.208.41.32 dl-ssl.google.com" >> /etc/hosts
echo "203.208.41.32 groups.google.com" >> /etc/hosts
echo "203.208.41.32 goo.gl" >> /etc/hosts
echo "203.208.41.32 appengine.google.com" >> /etc/hosts

echo "Fixing unsigned sources"
${SHELL_FOLDER}/script/util/launchpad-getkeys

