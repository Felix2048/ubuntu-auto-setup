#!/bin/bash

echo ""
echo "#########################################################################"
echo "#                          Start to auto setup!                         #"
echo "#########################################################################"
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
echo "Done"
echo ""

echo ""
echo "Checking system"
source ${SHELL_FOLDER}/script/common/systemCheck.sh
echo System Version: ${SystemVersion} ${SystemCode}
echo ROS Version Code: ${ROSCode}
echo "Done"
echo ""

echo ""
echo "Setting up system source list"
source ${SHELL_FOLDER}/script/${SystemCode}/sourceSetup.sh
echo "Done"
echo ""

echo ""
echo "Setting up system settings"
source ${SHELL_FOLDER}/script/common/systemSettingsSetup.sh
echo "Done"
echo ""

echo ""
echo "Installing common tools"
source ${SHELL_FOLDER}/script/common/commonToolsInstall.sh
echo "Done"
echo ""

echo ""
echo "Installing ROS"
source ${SHELL_FOLDER}/script/common/ROSInstall.sh
echo "Done"
echo ""

echo ""
echo "Finishing"
echo Removing Download Floder: ${DownloadFolderName}
rm -rf ${HOME}/Downloads/${DownloadFolderName}
echo "Done"
echo ""

echo ""
echo "#########################################################################"
echo "#                                 Done!                                 #"
echo "#########################################################################"
echo ""