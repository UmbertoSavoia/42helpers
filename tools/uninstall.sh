#!/bin/zsh

normal=`tput sgr0`
bold=`tput bold`

FTH=~/.42helpers

function confirmation_prompt {
	while read -t -k 1 option; do true; done
	[[ "$option" != ($'\n'|"") ]] && echo
	echo -n "Are you sure you want to uninstall ${bold}42helpers${normal}? [Y/n] "
	read -r -k 1 option
	[[ "$option" != $'\n' ]] && echo
	case "$option" in
		[yY$'\n']) echo -n "Ok! " ;;
		[nN]) exit ;;
	esac
}

if [ -d $FTH ]
then
	# Ask user confirmation
	confirmation_prompt

	echo "Deleting ${bold}42helpers${normal} folder..."
	rm -rf ${FTH}

	echo "Removing startup command from ~/.zshrc..."
	sed -i '' 's/zsh ~\/.42helpers\/tools\/rc.sh//g' ~/.zshrc

	# Remove trailing spaces and newlines at the end of .zshrc
	# https://stackoverflow.com/a/8635286
	perl -e 'undef $/; $_ = <>; s/\s+\z/\n/; print' ~/.zshrc > ~/.zshrc-tmp
	mv ~/.zshrc-tmp ~/.zshrc

	echo "Goodbye ${USER}! (-_-;)"
else
	echo "${bold}42helpers${normal} is not installed."
	exit 1
fi
