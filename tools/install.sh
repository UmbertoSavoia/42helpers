#!/bin/zsh

bold=`tput bold`
normal=`tput sgr0`

if [ -d ~/.42helpers ]
then
	echo "${bold}42helpers${normal} is already installed. You'll need to remove ~/.42helpers if you want to install."
	exit
else
	echo "Installing ${bold}42helpers${normal}..."
	git clone https://github.com/UmbertoSavoia/42helpers.git ~/.42helpers
fi

echo "Hooray! ${bold}42helpers${normal} has been installed."
