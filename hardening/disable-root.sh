#!/bin/bash

################################################################################
#
# Disable Root
# ------------
# Disables the root account
#
################################################################################
#
# [ Pre-main ]
#
################################################################################
#
    # Makes gloabl variables accessible
    . ../globalvar.sh

    # Checks to see if this script was executed with root privilege
    if ((EUID == 0)); then 
        echo "${red}Do not run this script as root or with root privilege${nc}" >&2
        echo -e "\nExiting..."
        #exit 1
    fi

#
################################################################################
#
# [  Main ]
#
################################################################################
#
    read -p "We will now disable the root account. Press [Enter] to continue."
    dsenableroot -d
