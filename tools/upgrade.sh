#!/bin/zsh

bold=`tput bold`
normal=`tput sgr0`

current_path=`pwd`

if [ -d ~/.42helpers ]
then
	cd ~/.42helpers
	if git diff --exit-code origin/main..main > /dev/null
	then
		echo "Upgrading ${bold}42helpers${normal}..."
		git pull origin main
		echo "Done :-)"
	else
		echo "${bold}42helpers${normal} is up to date."
	fi
		cd ${current_path}
else
	echo "${bold}42helpers${normal} is not installed."
	exit 1
fi
