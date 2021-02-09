#!/bin/zsh

# Define FTH if undefined
# ! [[ -v FTH ]] && FTH=~/.42helpers

FTH="~/.42helpers"

# Load styles
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
			git -C ${FTH} pull origin main --no-rebase
			echo "Done :-)";;
		[nN]) echo "Ok, maybe next time." ;;
	esac
}

if [ -d $FTH ]
then
	if ! git -C ${FTH} fetch origin &> /dev/null
	then
		echo "Couldn't check for upgrades."
		echo "Check your Internet connection and try again."
		exit 1
	fi
	if ! git -C ${FTH} diff --exit-code origin/main..main > /dev/null
	then
		upgrade_prompt
	else
		if ! [[ $1 = "-q" ]]; then
			echo "${bold}42helpers${normal} is up to date."
		fi
	fi
else
	echo "${bold}42helpers${normal} is not installed."
	exit 1
fi
