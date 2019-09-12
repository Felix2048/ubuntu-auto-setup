#!/bin/bash

RED_COLOR='\E[1;31m'
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


echo "###################################TEST##################################"

# TODO


echo "###################################TEST##################################"

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