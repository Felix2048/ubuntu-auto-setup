#!/bin/bash

INFO "Install GNOME"
sudo apt install gnome gnome-session* gnome-tweak-tool gnome-shell* gnome-panel* -y

INFO "Install lightdm (SELECT lightdm)"
sudo apt install lightdm
# sudo dpkg-reconfigure lightdm # for reconfigure

INFO "Install Yosemite Theme"
mkdir ~/.theme
git clone https://github.com/vinceliuice/Yosemite-gtk-theme.git ~/.theme/Yosemite-gtk-theme
~/.theme/Yosemite-gtk-theme/Install

INFO "Apply theme"
gsettings set org.gnome.desktop.interface gtk-theme 'Yosemite-dark'

INFO "Apply other setting"
gsettings set org.gnome.desktop.interface clock-show-date true     # show date
gsettings set org.gnome.desktop.interface menus-have-icons true    # show menus icons