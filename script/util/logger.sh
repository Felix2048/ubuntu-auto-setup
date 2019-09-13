#!/bin/bash

COLOR_TYPE=""
RED_COLOR='\033[31m'
GREEN_COLOR='\033[32m'
YELOW_COLOR='\033[33m'
BLUE_COLOR='\033[34m'
WRITE_COLOR='\033[37m'

END_COLOR='\033[0m'

# LOG {LEVEL} {MESSAGE}
function LOG() {
    typeset filename=$(basename ${BASH_SOURCE[2]})
    typeset lineno=${BASH_LINENO[1]}
    typeset funcname=${FUNCNAME[2]}
    typeset loglevel=${1}
    shift 1

    # check whether log-level is set correctly
    passlevel ${loglevel}
    # if [ $? -eq 0 ]; then
    #   printf "${COLOR_TYPE}$(date +'%Y-%m-%d %H:%M:%S') [${filename}:${funcname}:${lineno}] ${loglevel}: ${*}\n${END_COLOR}" 1>&2
    # fi
    printf "${COLOR_TYPE}$(date +'%Y-%m-%d %H:%M:%S') [${filename}:${funcname}:${lineno}] ${loglevel}: ${*}\n${END_COLOR}"
}

function TRACE() {
    COLOR_TYPE=${YELOW_COLOR}
    LOG "TRACE" "${*}"
}

function DEBUG() {
    COLOR_TYPE=${WRITE_COLOR}
    LOG "DEBUG" "${*}"
}

function INFO() {
    COLOR_TYPE=${BLUE_COLOR}
    LOG "INFO" "${*}"
}

function WARN() {
    COLOR_TYPE=${RED_COLOR}
    LOG "WARN" "${*}"
}

function REMIND() {
    COLOR_TYPE=${RED_COLOR}
    LOG "REMIND" "${*}"
}

function ERROR() {
    COLOR_TYPE=${WRITE_COLOR}
    LOG "ERROR" "${*}"
}

function ENTRY() {
    COLOR_TYPE=${GREEN_COLOR}
    LOG "ENTRY" "${*}"
}

# RETURN from function
# {1} optional return value, if not provide, return last command return value
# {2} optional exit message
# Notice: since there is no way return from parent function directly, this RETURN function will not returned from caller; so it's suggest for caller to use this function like:
#  RETURN [retvalue [retmessage]] ; return $?
# i.e., use a explicit return directly after RETURN
function RETURN() {
    typeset ret=$?
    if [ $# -gt 0 ]; then
        ret=${1}
        shift 1
    fi  
    LOG "RETURN" "${*}"
    return ${ret}
}

# EXIT from program directly
# {1} optional return value, if not provide, return last command return value
# {2} optional exit message
function EXIT() {
    typeset ret=$?
    if [ $# -gt 0 ]; then
        ret=${1}
        shift 1
    fi  
    LOG "EXIT" "${*}"
    exit ${ret}
}

function passlevel() {
    typeset V_LOGLEVEL=${LOGLEVEL:-INFO}
    case ${1} in
        TRACE)             if [[ "${V_LOGLEVEL}" =~ ^(TRACE) ]]; then return 0; fi ;;
        DEBUG)             if [[ "${V_LOGLEVEL}" =~ ^(TRACE|DEBUG) ]]; then return 0; fi ;;
        ENTRY|RETURN|EXIT) if [[ "${V_LOGLEVEL}" =~ ^(TRACE|DEBUG|ENTRY|RETURN|EXIT) ]]; then return 0; fi ;;
        INFO)              if [[ "${V_LOGLEVEL}" =~ ^(TRACE|DEBUG|ENTRY|RETURN|EXIT|INFO) ]]; then return 0; fi ;;
        WARN)              if [[ "${V_LOGLEVEL}" =~ ^(TRACE|DEBUG|ENTRY|RETURN|EXIT|INFO|WARN) ]]; then return 0; fi ;;
        ERROR)             if [[ "${V_LOGLEVEL}" =~ ^(TRACE|DEBUG|ENTRY|RETURN|EXIT|INFO|WARN|ERROR) ]]; then return 0; fi ;;
    esac
    return 1
}

#declare -fx LOG
#declare -fx TRACE
#declare -fx DEBUG
#declare -fx INFO
#declare -fx WARN
#declare -fx ERROR

function SIMPLE_COLOR_LOG() {
    printf "${COLOR_TYPE}${*}\n${END_COLOR}"
}

function WHITE_LOG() {
    COLOR_TYPE=${WHITLE_COLOR}
    SIMPLE_COLOR_LOG "${*}"
}

function GREEN_LOG() {
    COLOR_TYPE=${GREEN_COLOR}
    SIMPLE_COLOR_LOG "${*}"
}

function BLUE_LOG() {
    COLOR_TYPE=${BLUE_COLOR}
    SIMPLE_COLOR_LOG "${*}"
}

function RED_LOG() {
    COLOR_TYPE=${RED_COLOR}
    SIMPLE_COLOR_LOG "${*}"
}

function YELLOW_LOG() {
    COLOR_TYPE=${YELLOW_COLOR}
    SIMPLE_COLOR_LOG "${*}"
}