#!/bin/bash

INFO "Setup root password"
sudo bash ${SHELL_FOLDER}/script/util/rootPasswordSetup.sh
echo ""

INFO "Setup no password for sudo"
sudo touch /etc/sudoers.d/nopasswd4sudo
sudo bash -c "echo '${USERNAME} ALL=(ALL) NOPASSWD : ALL'  > /etc/sudoers.d/nopasswd4sudo"
# sudo pkexec visudo # for manually resetting   .d

INFO "Fix time zone problem"
timedatectl set-local-rtc true
timedatectl set-ntp true

INFO "Setup tsinghua mirrors for pip"
mkdir ~/.pip
rm ~/.pip/pip.conf
cat > ~/.pip/pip.conf << EOF
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
trusted-host = pypi.tuna.tsinghua.edu.cn
EOF

INFO "Setup git config"
git config --global user.email ${UserEmail}
git config --global user.name  ${UserName}

INFO "Disable scren auto lock"
sudo gsettings set org.gnome.desktop.session idle-delay 0
sudo gsettings set org.gnome.desktop.screensaver lock-enabled false