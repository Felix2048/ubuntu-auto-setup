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

INFO "Install macbuntu"
sudo add-apt-repository ppa:noobslab/macbuntu -y
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt update -y
sudo apt install macbuntu-os-* -y
sudo apt install slingscold

INFO "Install albert (replacing Mac Spotlight)"
sudo apt install albert

INFO "Install plank dock"
sudo apt install plank

INFO "Replace <Ubuntu Desktop> text with <Mac> on the Panel"
cd && wget -O Mac.po http://drive.noobslab.com/data/Mac/change-name-on-panel/mac.po
cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd

INFO "Install Apple Logo for greeter"
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
sudo mkdir /usr/share/unity/icons/
sudo mv launcher_bfb.png /usr/share/unity/icons/
gsettings set com.canonical.unity-greeter draw-grid false

INFO "Install MS core fonts"
sudo apt install ttf-mscorefonts-installer -y
INFO "Install Mac fonts"
wget http://drive.noobslab.com/data/Mac/macfonts.zip -O ${DownloadFolder}/mac-fonts.zip
sudo unzip ${DownloadFolder}/mac-fonts.zip -d /usr/share/fonts
INFO "Install Other fonts"
wget https://www.fontspace.com/download/15111/35564c0efef849cf9200688626b85d6f/nimavisual_timeburner.zip -O ${DownloadFolder}/timeburner-fonts.zip
sudo unzip ${DownloadFolder}/timeburner-fonts.zip -d /usr/share/fonts
wget https://www.fontspace.com/download/14579/f994430f737d4934a3f03b28a19fa484/total-fontgeek-dtf-ltd_erbos-draco-monospaced-nbp.zip -O ${DownloadFolder}/NBP-fonts.zip
sudo unzip ${DownloadFolder}/NBP-fonts.zip -d /usr/share/fonts
INFO "Update fonts"
sudo fc-cache -f -v

INFO "Download wallpapers"
wget http://drive.noobslab.com/data/Mac/MacBuntu-Wallpapers.zip -O ${DownloadFolder}/wallpapers.zip
sudo unzip ${DownloadFolder}/wallpapers.zip -d /usr/share/backgrounds/

INFO "Install GNOME shell extensions"
git clone https://github.com/RaphaelRochet/applications-overview-tooltip ~/.local/share/gnome-shell/extensions/applications-overview-tooltip@RaphaelRochet

INFO "Apply Individual settings"
gsettings set org.gnome.desktop.interface gtk-theme 'Yosemite-dark'             # set theme
gsettings set org.gnome.desktop.interface cursor-theme 'Macbuntu-OSX-cursors'   # set cursors
gsettings set org.gnome.desktop.interface icon-theme 'MacBuntu-OSX'             # set icons
gsettings set org.gnome.desktop.background show-desktop-icons false             # not show desktop icons
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/MacBuntu-Wallpapers/mbuntu-4.jpg' # set wallpaper
gsettings set org.gnome.desktop.interface font-name 'Lucida MAC 11'                 # set font
gsettings set org.gnome.desktop.interface document-font-name 'MACGrande Medium 11'  # set font
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Lucida MAC Bold 11'   # set font
dconf write /net/launchpad/plank/docks/dock1/zoom-enabled true
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.shell enabled-extensions "['caffeine@patapon.info', 'disconnect-wifi@kgshank.net', 'hidetopbar@mathieu.bidon.ca', 'hide-veth@jonathan.bluemosh.com', 'impatience@gfxmonk.net', 'LogOutButton@kyle.aims.ac.za', 'multi-monitors-add-on@spin83', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'noannoyance@sindex.com', 'openweather-extension@jenslody.de', 'suspend-button@laserb', 'show-ip@sgaraud.github.com', 'workspace-indicator@gnome-shell-extensions.gcampax.github.com', 'windowsNavigator@gnome-shell-extensions.gcampax.github.com', 'gnome-shell-trash-extension', 'applications-overview-tooltip@RaphaelRochet', 'TopIcons@phocean.net']"
gsettings set com.canonical.unity-greeter draw-user-backgrounds false
gsettings set com.canonical.unity-greeter background 'file:///usr/share/backgrounds/MacBuntu-Wallpapers/mbuntu-1.jpg'

INFO "Setup Applications Launcher"
cat > ~/.config/plank/dock1/launchers/show-apps.dockitem << EOF
[PlankItemsDockItemPreferences]
Launcher=file://${HOME}/.local/share/applications/show-apps.desktop
EOF
cat > ~/.local/share/applications/show-apps.desktop << EOF
[Desktop Entry]
Name=Show Apps
Comment=Show applications menu
Exec=${HOME}/Desktop/ShowApplications
Icon=/usr/share/icons/slingscold.png
Type=Application
StartupNotify=false
EOF
chmod 777 ~/.local/share/applications/show-apps.desktop
cp ${SHELL_FOLDER}/script/util/ShowApplications ${HOME}/Desktop/ShowApplications
chmod 777 ${HOME}/Desktop/ShowApplications
REMIND "May need to set desttop file open with <Run Software>"

INFO "Install Monochrome icons for Libreoffice"
sudo apt install libreoffice-style-sifr
REMIND "Go to LibreOffice menu select <Tools> - <Options> - <LibreOffice> - <View> and select <Sifr> under <Icon size and style>"
/usr/bin/libreoffice

