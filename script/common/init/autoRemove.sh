#!/bin/bash

INFO "Remove Amazon launcher"
sudo apt remove unity-webapps-common -y
sudo apt remove ubuntu-web-launchers -y

# INFO "Remove Firefox"
# sudo apt remove firefox -y

INFO "Remove other apps and games"
sudo apt remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot onboard deja-dup gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku landscape-client-ui-install -y

