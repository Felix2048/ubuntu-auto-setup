#!/bin/bash

GREEN_COLOR='\E[1;32m'
YELOW_COLOR='\E[1;33m'
WRITE_COLOR='\E[1;37m'
RES='\033[0m'

echo ""
echo -e "${GREEN_COLOR}#########################################################################${RES}"
echo -e "${GREEN_COLOR}#                          Start to auto setup!                         #${RES}"
echo -e "${GREEN_COLOR}#########################################################################${RES}"
echo ""

echo ""
echo "Initializing"
SHELL_FOLDER=$(dirname "$0")                            # get the floder contains the shell script
echo Script Path: ${SHELL_FOLDER}
UserPassword="123"                                      # default password
DownloadFolderName="ubuntu-auto-setup-download"         # floder to download
echo Creating Download Floder: ${DownloadFolderName}
mkdir -p ${HOME}/Downloads/${DownloadFolderName}
DownloadFolder=${HOME}/Downloads/${DownloadFolderName}
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Checking system"
source ${SHELL_FOLDER}/script/common/systemCheck.sh
echo System Version: ${SystemVersion} ${SystemCode}
echo ROS Version Code: ${ROSCode}
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Setting up system source list"
source ${SHELL_FOLDER}/script/${SystemCode}/sourceSetup.sh
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Setting up system settings"
source ${SHELL_FOLDER}/script/common/systemSettingsSetup.sh
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Installing common tools"
source ${SHELL_FOLDER}/script/common/commonToolsInstall.sh
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Installing zsh"
source ${SHELL_FOLDER}/script/common/zshInstallAndConfig.sh
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Installing Anaconda3"
source ${SHELL_FOLDER}/script/common/anaconda3Install.sh
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Installing ROS"
source ${SHELL_FOLDER}/script/common/ROSInstall.sh
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo "Finishing"
echo Removing Download Floder: ${DownloadFolderName}
rm -rf ${HOME}/Downloads/${DownloadFolderName}
echo -e "${RED_COLOR}Done${RES}"
echo ""

echo ""
echo -e "${GREEN_COLOR}#########################################################################${RES}"
echo -e "${GREEN_COLOR}#                                 Done!                                 #${RES}"
echo -e "${GREEN_COLOR}#########################################################################${RES}"
echo ""