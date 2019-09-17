#!/bin/bash

INFO "Setup root password"
sudo bash ${SHELL_FOLDER}/script/util/rootPasswordSetup.sh
echo ""

INFO "Setup no password for sudo"
sudo touch /etc/sudoers.d/nopasswd4sudo
sudo bash -c "echo '${USERNAME} ALL=(ALL) NOPASSWD : ALL'  > /etc/sudoers.d/nopasswd4sudo"
# sudo pkexec visudo # for manually resetting

INFO "Setup ssh for github.com"
sudo bash ${SHELL_FOLDER}/script/util/github-ssh-key.sh

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

INFO "Apply system settings"
gsettings set org.gnome.desktop.session idle-delay 0                # disable scren auto lock
gsettings set org.gnome.desktop.screensaver lock-enabled false      # Disable scren auto lock
gsettings set org.gnome.desktop.interface clock-show-date true      # show date
gsettings set org.gnome.desktop.interface menus-have-icons true     # show menus icons
gsettings set org.gnome.system.locale region 'en_US.UTF-8'          # set region US
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['GB18030', 'UTF-8', 'CURRENT', 'ISO-8859-15', 'UTF-16']"    # auto detect gedit language