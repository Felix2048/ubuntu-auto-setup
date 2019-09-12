#!/bin/bash

echo ""
echo "#########################################################################"
echo "#                          Start to auto setup!                         #"
echo "#########################################################################"
echo ""

echo ""
echo "Initializing"
DownloadFolderName="ubuntu-auto-setup-download"
echo Creating Download Floder: ${DownloadFolderName}
mkdir -p ${HOME}/Downloads/${DownloadFolderName}
echo "Done"
echo ""

echo ""
echo "Checking system"
source ./script/common/systemCheck.sh
echo System Version: ${SystemVersion} 
echo "Done"
echo ""

echo "###################################TEST##################################"

# TODO

echo "###################################TEST##################################"

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