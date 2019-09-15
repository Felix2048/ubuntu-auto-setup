#!/bin/bash

INFO "Script Path: ${SHELL_FOLDER}"

INFO "Make sure apt is installed"
sudo apt-get install apt -y

INFO "Install Dependencies"
source ${SHELL_FOLDER}/script/common/init/dependenciesInstall.sh

INFO "Remove Useless Packages"
source ${SHELL_FOLDER}/script/common/init/autoRemove.sh

INFO "Creating Download Floder: ${DownloadFolderName}"
mkdir -p ${HOME}/Downloads/${DownloadFolderName}
DownloadFolder=${HOME}/Downloads/${DownloadFolderName}

export DownloadFolder
export GIO_EXTRA_MODULES=/usr/lib/x86_64-linux-gnu/gio/modules/ # for gsettings