#!/bin/sh

ansYES=yes
ansNO=no

if [ "$ansYES" == "yes" ]; then
	echo "True"
elif [ "$ansNo" == "no" ]; then
	echo "No"
else
	echo "Wrong Input!"
fi


#gsettings set org.gnome.shell app-picker-layout '[]' 
