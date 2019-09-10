#!/bin/bash

echo ""
echo "#######################################################################"
echo "#                           Start to auto setup!                      #"
echo "#######################################################################"
echo ""

downloadFolderName="ubuntu-auto-setup-download"
mkdir ~/Downloads/${downloadFolder}

apt-get install apt -y

echo ""
echo "Seting up source"
sh ./script/sourceSetup.sh
echo "Done"
echo ""

echo ""
echo "Seting no password for sudo"
sh ./script/noPassword4sudo.sh
echo "Done"
echo ""

echo ""
echo "Seting common dev tools"
sh ./script/commonDevToolsSetup.sh
echo "Done"
echo ""