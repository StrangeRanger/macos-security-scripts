#!/usr/bin/env bash
#
# Disable the root account.
#
# Version: v1.0.1
# License: MIT License
#          Copyright (c) 2020-2022 Hunter T. (StrangeRanger) 
#
########################################################################################

red=$'\033[1;31m'
nc=$'\033[0m'

## Check if the script was executed with root privilege.
if [[ $EUID = 0 ]]; then
    echo "${red}Do NOT run this script as root or with root privilege${nc}" >&2
    echo -e "\nExiting..."
    exit 1
fi

read -rp "We will now disable the root account. Press [Enter] to continue."
dsenableroot -d
