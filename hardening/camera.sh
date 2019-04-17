#!/bin/bash

RED='\033[1;31m'
NC='\033[0m'

read -p "csrutil must be disabled to continue" 

while true; do
	read -p "Have you disabled csrutil? [y,n] " doit
	doit=$( echo "$doit" | tr '[:upper:]' '[:lower:]')
	if [ $doit == "y" ] || [ $doit == "yes" ]; then
		break
	elif [ $doit == "n" ] || [ $doit == "no" ]; then
		read -p "We will now disable csrutil, then the script will stop. You must reboot your computer then rerun the script."
		#csrutil disable
		echo "Disabled csrutil. Now please reboot your computer and then re-execute this script"
		exit 1
	else
		echo -e "${RED}Invlaid command - Please input 'y' or 'n'${NC}"
	fi
done

read -p "We will now disable your all laptop camera. \nWARNING!!! By doing this, you will completely disable the software components behind the built-in camera on your computer. Press 'enter' to continue and 'Ctrl + C' to cancel."

#input code to disable camera
