#!/bin/zsh

# Set env var
FTH=~/.42helpers

# Check for upgrades
zsh ~/42/fork/tools/upgrade.sh -q

# Add bin folder to PATH
if [ -d $FTH/bin ]; then
	export PATH=$FTH/bin:$PATH
fi

# TODO: load brew path variable
