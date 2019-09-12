#!/bin/bash

. /etc/os-release

KernelName=`uname -s`
HardwarePlatform=`uname -i`
SystemVersion=""
SystemCode=""
ROSCode=""

echo System Info: "${KernelName} ${PRETTY_NAME}"
echo Hardware Platform: ${HardwarePlatform}

if [[ -z ${KernelName} || "${KernelName}" != "Linux" ]] ; then
    echo "Only Linux system is supported!"
    exit 1
fi

if [[ -z ${NAME} || "${NAME}" != "Ubuntu" ]] ; then
    echo "Only Debian Ubuntu is supported!"
    exit 2
fi


case ${VERSION_ID} in
    "16.04") 
        # echo "16.04"
        SystemVersion="16.04"
        SystemCode="xenial"
        ROSCode="kinetic"
    ;;
    "18.04") 
        # echo "18.04"
        SystemVersion="18.04"
        SystemCode="bionic"
        ROSCode="melodic"
    ;;
    *) 
        echo "Only Debian Ubuntu 16.04 or 18.04 LTS is supported!"
        exit 3
    ;;
esac

if [[ -z ${HardwarePlatform} || "${HardwarePlatform}" != "x86_64" ]] ; then
    echo "Only x86_64 is supported!"
    exit 4
fi

export SystemVersion
export SystemCode
export ROSCode