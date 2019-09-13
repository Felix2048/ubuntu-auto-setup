#!/bin/bash

SHELL_FOLDER=$(dirname "$0")                            # get the floder contains the shell script
UserName="felix"                                        # default user
UserEmail="infinitesamsarax@outlook.com"                # default email
UserPassword="123"                                      # default password
DownloadFolderName="ubuntu-auto-setup-download"         # floder to download

source ${SHELL_FOLDER}/script/util/logger.sh

echo
GREEN_LOG "#########################################################################"
GREEN_LOG "#                          Start to auto setup!                         #"
GREEN_LOG "#########################################################################"
echo

echo
REMIND "Initializing"
source ${SHELL_FOLDER}/script/common/init.sh
INFO "Download Floder: ${DownloadFolder} created!"
REMIND "Done"
echo

echo
REMIND "Checking system"
source ${SHELL_FOLDER}/script/common/systemCheck.sh
INFO "System Version: ${SystemVersion} ${SystemCode}"
INFO "ROS Version Code: ${ROSCode}"
REMIND "Done"
echo

echo
REMIND "Setting up system source list"
source ${SHELL_FOLDER}/script/${SystemCode}/sourceSetup.sh
REMIND "Done"
echo

echo
REMIND "Installing system software"
source ${SHELL_FOLDER}/script/common/install.sh
REMIND "Done"
echo

echo
REMIND "Configuring system settings"
source ${SHELL_FOLDER}/script/common/systemSettingsSetup.sh
REMIND "Done"
echo

echo
REMIND "Finishing"
INFO "Removing Download Floder: ${DownloadFolderName}"
rm -rf ${HOME}/Downloads/${DownloadFolderName}
REMIND "Done"
echo

echo
GREEN_LOG "#########################################################################"
GREEN_LOG "#                                 Done!                                 #"
GREEN_LOG "#########################################################################"
echo
