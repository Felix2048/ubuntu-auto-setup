#!/bin/bash

INFO "Remove Amazon launcher"
apt remove unity-webapps-common -y
apt remove ubuntu-web-launchers -y

# INFO "Remove Firefox"
# apt remove firefox -y

INFO "Remove other apps and games"
apt remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot onboard deja-dup gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku landscape-client-ui-install -y

