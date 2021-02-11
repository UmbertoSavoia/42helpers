#!/bin/zsh

# Define installation dir if undefined
# ! [[ -v FTH ]] && FTH=~/.42helpers

FTH=~/.42helpers

normal=`tput sgr0`
bold=`tput bold`

abort() {
  printf "%s\n" "$1"
  exit 1
}

install() {
	echo "Installing ${bold}42helpers${normal}..."
	git clone https://github.com/UmbertoSavoia/42helpers.git ${FTH}

	if ! grep -q "source ~/.42helpers/tools/rc.sh" ~/.zshrc; then
		echo "Adding startup command to ~/.zshrc..."
		echo "\nsource ~/.42helpers/tools/rc.sh" >> ~/.zshrc
	fi
}

install_prompt() {
	while read -t -k 1 option; do true; done
	[[ "$option" != ($'\n'|"") ]] && echo
	echo -n "Are you sure you want to install ${bold}42helpers${normal}? [Y/n] "
	read -r -k 1 option
	[[ "$option" != $'\n' ]] && echo
	case "$option" in
		[yY$'\n'])
			echo -n "Ok! "
			install ;;
		[nN]) exit ;;
	esac
}

env_check() {
	# First check OS
	OS="$(uname)"
	if [[ "$OS" == "Linux" ]]; then
		echo "Some helpers may not work on Linux."
		return 0
	elif [[ "$OS" != "Darwin" ]]; then
		echo "${bold}42helpers${normal} is only supported on macOS and Linux."
		return 0
	# Check 42 folders
	elif ! [ -d /Library/Scripts/42 ] || ! [ -d /usr/share/norminette ] || ! [ -h ~/goinfre ]; then
		echo "You aren't in a 42 cluster. Some helpers may not work on your machine."
		return 0
	else
		return 1
	fi
}

if ! [ -d $FTH ]
then
	if env_check; then
		# Ask user for confirmation
		install_prompt
	else
		# Everything looks fine. Conventional installation.
		install
	fi
else
	abort "${bold}42helpers${normal} is already installed."
fi

if [ -d $FTH ]; then
	echo "Hooray! ${bold}42helpers${normal} has been installed."
else
	abort "An error occurred during the installation process."
fi
