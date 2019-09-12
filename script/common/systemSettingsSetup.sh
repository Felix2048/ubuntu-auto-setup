#!/bin/bash

echo "Seting no password for sudo"
touch /etc/sudoers.d/nopasswd4sudo
echo "ubuntu ALL=(ALL) NOPASSWD : ALL"  >> /etc/sudoers.d/nopasswd4sudo

echo "Fix time zone problem"
timedatectl set-local-rtc true
timedatectl set-ntp true