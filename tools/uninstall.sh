#!/bin/zsh

underline=`tput smul`
nounderline=`tput rmul`
bold=`tput bold`
normal=`tput sgr0`

if [ -d ~/.42helpers ]
then
	echo "Deleting ${bold}42helpers${normal} folder..."
	rm -rf ~/.42helpers
	echo "Goodbye! (-_-;)"
else
	echo "${bold}42helpers${normal} is not installed. You can install it by following the instructions on this page:"
	echo "> ${underline}https://github.com/UmbertoSavoia/42helpers${nounderline}"
	echo ""
	echo "If your terminal emulator supports it, you can open the link holding Cmd/Ctrl and clicking on it ;-)"
fi
