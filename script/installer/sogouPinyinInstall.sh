#!/bin/bash

# sed -i '$a\deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main' /etc/apt/sources.list
# apt update
apt install -y sogoupinyin --allow-unauthenticated
im-config -n fcitx
REMIND "Uncheck <Only Show Current Language> And Search <Sogou Pinyin>"
/usr/bin/fcitx-configtool
