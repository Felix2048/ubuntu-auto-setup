#!/bin/bash

echo "Setup root password"
source ${SHELL_FOLDER}/script/util/rootPasswordSetup.sh
echo ""

echo "Setup no password for sudo"
touch /etc/sudoers.d/nopasswd4sudo
echo "ubuntu ALL=(ALL) NOPASSWD : ALL"  >> /etc/sudoers.d/nopasswd4sudo
# pkexec visudo # for manually resetting sudoers.d

echo "Fix time zone problem"
timedatectl set-local-rtc true
timedatectl set-ntp true

echo "Setup tsinghua mirrors for pip"
mkdir ~/.pip
rm ~/.pip/pip.conf
cat > ~/.pip/pip.conf << EOF
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
trusted-host = pypi.tuna.tsinghua.edu.cn
EOF