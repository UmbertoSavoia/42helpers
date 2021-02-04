#!/bin/zsh

normal=`tput sgr0`
bold=`tput bold`

# Installation dir
FTH=~/.42helpers

# Should it check if var is already defined?
# if [ -n "${FTH+1}" ]
# then
# 	FTH=~/.42helpers
# fi

if [ -d $FTH ]
then
	echo "${bold}42helpers${normal} is already installed."
	exit 1
else
	echo "Installing ${bold}42helpers${normal}..."
	git clone https://github.com/UmbertoSavoia/42helpers.git ${FTH}
fi

if ! grep -q "zsh ${FTH}/tools/rc.sh" ~/.zshrc
then
	echo "Adding startup command to ~/.zshrc..."
	echo "\nzsh ~/.42helpers/tools/rc.sh" >> ~/.zshrc
fi

if [ -d $FTH ]
then
	echo "Hooray! ${bold}42helpers${normal} has been installed."
else
	echo "An error occurred during the installation process."
	exit 1
fi
