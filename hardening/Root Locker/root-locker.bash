#!/usr/bin/env bash
#
# This script disables the root account, preventing users from directly logging in as
# root.
#
# Note:
#   Disabling the root account doesn't prevent users from using something like `sudo su`
#   to gain root access.
#
# Version: v1.0.5
# License: MIT License
#          Copyright (c) 2020-2024 Hunter T. (StrangeRanger)
#
########################################################################################

C_GREEN="$(printf '\033[0;32m')"
C_BLUE="$(printf '\033[0;34m')"
C_RED="$(printf '\033[1;31m')"
C_NC="$(printf '\033[0m')"

C_SUCCESS="${C_GREEN}==>${C_NC} "
C_ERROR="${C_RED}ERROR:${C_NC} "
C_INFO="${C_BLUE}==>${C_NC} "


read -rp "${C_INFO}We will now disable the root account. Press [Enter] to continue."
dsenableroot -d || {
    echo -e "\n${C_ERROR}Failed to disable the root account"
    exit 1
}

echo -e "\n${C_SUCCESS}The root account has been locked"
