#!/bin/bash

RED='\033[1;31m'
NC='\033[0m'

read -p "csrutil must be disabled to continue" 

# asks user if they disabled csrutil
while true; do
	read -p "Have you disabled csrutil? [y|n] " doit
	doit=$( echo "$doit" | tr '[:upper:]' '[:lower:]')
	case $doit in
		y|yes) break;;
		n|no) read -p "You will need to restart your computer into recovery mode, open the terminal, then use the command 'csrutil disable' to disable csrutil, and restart your computer normally." && echo "Stopping script" && exit 1;;
		*) echo -e "${RED}Invlaid command - Please input 'y' or 'n'${NC}";;
	esac
done

read -p "We will now disable your all laptop camera.
WARNING!!! By doing this, you will completely disable the software components behind the built-in camera on your computer. Press 'enter' to continue and 'Ctrl + C' to cancel."

# disables camera software components
sudo chmod a-r /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/Resources/VDC.plugin/Contents/MacOS/VDC
sudo chmod a-r /System/Library/PrivateFrameworks/CoreMediaIOServicesPrivate.framework/Versions/A/Resources/AVC.plugin/Contents/MacOS/AVC
sudo chmod a-r /System/Library/QuickTime/QuickTimeUSBVDCDigitizer.component/Contents/MacOS/QuickTimeUSBVDCDigitizer
sudo chmod a-r /Library/CoreMediaIO/Plug-Ins/DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera
sudo chmod a-r /Library/CoreMediaIO/Plug-Ins/FCP-DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera

echo -e "Successfully disabled all software components that control camera\n"

read -p "In order to keep you mac safe, you will need to reenable csrutil. Once again, restart your computer into recovery mode, open the terminal, and enter 'csrutil enable', then restart your computer normally."
echo "Done"
