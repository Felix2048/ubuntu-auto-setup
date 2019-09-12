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
source ./script/common/systemCheck.sh
echo System Version: ${SystemVersion} 
echo "Done"
echo ""

echo "###################################TEST##################################"

# TODO


echo "###################################TEST##################################"

# echo ""
# echo "Finishing"
# echo Removing Download Floder: ${DownloadFolderName}
# rm -rf ${HOME}/Downloads/${DownloadFolderName}
# echo "Done"
# echo ""

# echo ""
# echo "#########################################################################"
# echo "#                                 Done!                                 #"
# echo "#########################################################################"
# echo ""

# echo "OPTIND starts at $OPTIND"
# while getopts ":pq:" optname
# do
#     case "$optname" in
#     "p")
#         echo "Option $optname is specified"
#         ;;
#     "q")
#         echo "Option $optname has value $OPTARG"
#         ;;
#     "?")
#         echo "Unknown option $OPTARG"
#         ;;
#     ":")
#         echo "No argument value for option $OPTARG"
#         ;;
#     *)
#         # Should not occur
#         echo "Unknown error while processing options"
#         ;;
#     esac
# echo "OPTIND is now $OPTIND"
# done