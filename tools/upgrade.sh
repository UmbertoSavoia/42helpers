#!/bin/zsh

. ${FTH}/tools/styles.sh &> /dev/null

function upgrade_prompt {
	while read -t -k 1 option; do true; done
	[[ "$option" != ($'\n'|"") ]] && echo
	echo -n "[42helpers] Would you like to upgrade? [Y/n] "
	read -r -k 1 option
	[[ "$option" != $'\n' ]] && echo
	case "$option" in
		[yY$'\n'])
			echo "Upgrading ${bold}42helpers${normal}..."
			git -C ~/.42helpers pull origin main --no-rebase
			echo "Done :-)";;
		[nN]) echo "Ok, maybe next time." ;;
	esac
}

if [ -d ~/.42helpers ]
then
	if ! git -C ~/.42helpers fetch origin &> /dev/null
	then
		echo "Couldn't check for upgrades."
		echo "Check your Internet connection and try again."
		exit 1
	fi
	if ! git -C ~/.42helpers diff --exit-code origin/main..main > /dev/null
	then
		upgrade_prompt
	else
		echo "${bold}42helpers${normal} is up to date."
	fi
else
	echo "${bold}42helpers${normal} is not installed on your machine."
	echo "Check the ~/.42helpers folder exists and try again."
	exit 1
fi
