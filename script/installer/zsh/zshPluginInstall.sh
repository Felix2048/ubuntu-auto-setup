#!/bin/bash

# install zsh-autosuggestions
if [ ! -d "${HOME}/.zsh/zsh-autosuggestions" ]; then
  git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc 
else
  echo "[*] ~/.zsh/zsh-autosuggestions exists..."
fi

# install zsh-syntax-highlighting
if [ ! -d "${HOME}/.zsh/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
  echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
else
  echo "[*] ~/.zsh/zsh-syntax-highlighting exists...."
fi

# install autojump
sudo apt install autojump -y
# echo "[!] need to add autojump in ~/.zshrc plugin and logoff manually!"

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo ~/.fzf/install