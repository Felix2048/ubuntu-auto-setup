#!/bin/bash

INFO "Install zsh"
apt install zsh -y

INFO "Install oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

INFO "Config zsh"
mv /etc/passwd /etc/passwd.bak
sed '1c root:x:0:0:root:/root:/bin/zsh' /etc/passwd.bak > /etc/passwd
usermod -s /bin/zsh ${UserName}
# su - ${UserName} -c "chsh -s /bin/zsh"
rm ~/.zshrc
cp ${SHELL_FOLDER}/config/zshrc.zsh-template ~/.zshrc

