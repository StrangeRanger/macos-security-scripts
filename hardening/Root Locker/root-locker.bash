#!/usr/bin/env bash
#
# This script disables the root account and removes its password.
#
# Version: v1.0.4
# License: MIT License
#          Copyright (c) 2020-2024 Hunter T. (StrangeRanger)
#
########################################################################################

read -rp "We will now disable the root account. Press [Enter] to continue."
dsenableroot -d
