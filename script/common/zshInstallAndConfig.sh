#!/bin/bash

echo "Install zsh"
apt install zsh

echo "Install oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo "Config zsh"
mv /etc/passwd /etc/passwd.bak
sed '1c root:x:0:0:root:/root:/bin/zsh' /etc/passwd.bak > /etc/passwd
usermod -s /bin/zsh ${USERNAME}
rm ~/.zshrc
cp ${SHELL_FOLDER}/config/zshrc.zsh-template ~/.zshrc

echo "Install zsh plugin"
source ${SHELL_FOLDER}/script/util/zshPluginInstall.sh

