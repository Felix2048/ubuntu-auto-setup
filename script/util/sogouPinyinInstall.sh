#!/bin/bash

# sed -i '$a\deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main' /etc/apt/sources.list
# apt update
apt install -y sogoupinyin --allow-unauthenticated
echo -e "\e[31mUncheck <Only Show Current Language> And Search <Sogou Pinyin>\e[0m"
/usr/bin/fcitx-configtool