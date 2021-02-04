#!/bin/zsh

normal=`tput sgr0`
bold=`tput bold`

if [ -d ~/.42helpers ]
then
	echo "Deleting ${bold}42helpers${normal} folder..."
	rm -rf ~/.42helpers

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
