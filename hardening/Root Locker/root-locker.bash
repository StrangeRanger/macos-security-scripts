#!/usr/bin/env bash
#
# This script locks the root account. This prevents users from logging into the root
# account via `su` or the GUI. Note that it does NOT prevent users from becoming root
# via methods such as `sudo su`.
#
# Version: v1.0.3
# License: MIT License
#          Copyright (c) 2020-2024 Hunter T. (StrangeRanger)
#
########################################################################################

C_RED="$(printf '\033[1;31m')"
C_NC="$(printf '\033[0m')"


## Check if the script was executed with root privilege.
if [[ $EUID != 0 ]]; then
    echo "${C_RED}This script requires root privilege${C_NC}" >&2
    echo -e "\nExiting..."
    exit 1
fi


read -rp "We will now disable the root account. Press [Enter] to continue."
dsenableroot -d
