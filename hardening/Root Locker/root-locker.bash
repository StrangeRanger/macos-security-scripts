#!/usr/bin/env bash
#
# This script disables the root account, preventing users from directly logging in as
# root.
#
# Note:
#   Disabling the root account doesn't prevent users from using something like `sudo su`
#   to gain root access.
#
# Version: v1.0.4
# License: MIT License
#          Copyright (c) 2020-2024 Hunter T. (StrangeRanger)
#
########################################################################################

read -rp "We will now disable the root account. Press [Enter] to continue."
dsenableroot -d
