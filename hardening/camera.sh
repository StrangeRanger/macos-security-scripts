#!/bin/bash

RED='\033[1;31m'
NC='\033[0m'

read -p "csrutil must be disabled to continue" 

# asks user if they disabled csrutil
while true; do
	read -p "Have you disabled csrutil? [y,n] " doit
	doit=$( echo "$doit" | tr '[:upper:]' '[:lower:]')
	if [ $doit == "y" ] || [ $doit == "yes" ]; then
		break
	elif [ $doit == "n" ] || [ $doit == "no" ]; then
		read -p "We will now disable csrutil, then the script will stop. You must reboot your computer then rerun the script."
		csrutil disable
		echo "Disabled csrutil. Now please reboot your computer and then re-execute this script"
		exit 1
	else
		echo -e "${RED}Invlaid command - Please input 'y' or 'n'${NC}"
	fi
done

read -p "We will now disable your all laptop camera. \nWARNING!!! By doing this, you will completely disable the software components behind the built-in camera on your computer. Press 'enter' to continue and 'Ctrl + C' to cancel."

# disables camera software components
sudo chmod a-r /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/Resources/VDC.plugin/Contents/MacOS/VDC
sudo chmod a-r /System/Library/PrivateFrameworks/CoreMediaIOServicesPrivate.framework/Versions/A/Resources/AVC.plugin/Contents/MacOS/AVC
sudo chmod a-r /System/Library/QuickTime/QuickTimeUSBVDCDigitizer.component/Contents/MacOS/QuickTimeUSBVDCDigitizer
sudo chmod a-r /Library/CoreMediaIO/Plug-Ins/DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera
sudo chmod a-r /Library/CoreMediaIO/Plug-Ins/FCP-DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera

echo -e "Successfully disabled all software components that control camera\n"
read -p "We will now re-enable csrutil"

csrutil enable

echo "Successfully re-enabled csrutil"
echo "Done"
