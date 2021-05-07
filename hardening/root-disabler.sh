#!/bin/bash
#
# Disables the root account
#
# Version: v1.0.1
# License: MIT License
#   Copyright (c) 2020-2021 Hunter T.
#
################################################################################

red=$'\033[1;31m'
nc=$'\033[0m'

# Checks to see if this script was executed with root privilege
if [[ $EUID = 0 ]]; then
    echo "${red}Do not run this script as root or with root privilege${nc}" >&2
    echo -e "\nExiting..."
    exit 1
fi

read -rp "We will now disable the root account. Press [Enter] to continue."
dsenableroot -d
