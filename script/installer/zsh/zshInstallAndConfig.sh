#!/bin/bash

INFO "Install zsh"
sudo apt install zsh -y

INFO "Install oh-my-zsh"
sudo curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

INFO "Config zsh"
sudo cp /etc/passwd /etc/passwd.bak
sudo bash -c "sed '1c root:x:0:0:root:/root:/bin/zsh' /etc/passwd.bak > /etc/passwd"
# pkexec mv /etc/passwd.bak /etc/passwd # for restore
chsh -s /bin/zsh
rm ~/.zshrc
cp ${SHELL_FOLDER}/config/zshrc.zsh-template ~/.zshrc

