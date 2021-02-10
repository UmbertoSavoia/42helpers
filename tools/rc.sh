#!/bin/zsh

# Set env var
FTH=~/.42helpers

# Check for upgrades
zsh $FTH/tools/upgrade.sh -q

# Add bin folder to PATH
if [ -d $FTH/bin ]; then
	export PATH=$FTH/bin:$PATH
fi

# Load brew path variable
if [ -d ~/goinfre/.brew ]; then
	export PATH=~/goinfre/.brew/bin:$PATH
fi
