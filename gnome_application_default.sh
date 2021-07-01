#!/bin/sh
echo
echo "WARNING! This script will revert gnome application menu to default"
echo "Proceed with CAUTION!!"
echo "Type 'yes' to proceed & 'no' to abort"

while :
do
	read ANSWER
	case $ANSWER in
		yes)
			echo
			gsettings set org.gnome.shell app-picker-layout '[]'
			echo
			echo "Changes will take place once the system is rebooted"
			break
			;;
		no)
			echo
			echo "input $no received"
			echo "Quiting now.."
			break
			;;
		*)
			echo "Sorry, wrong input! Try again"
			;;
	esac
done
echo
