!#/bin/zsh

# Set env var
export FTH=~/.42helpers

# Check for upgrades
zsh $FTH/tools/upgrade.sh

# Add bin folder to PATH
if [ -d $FTH/bin ]; then
	export PATH=$FTH/bin:$PATH
fi

# TODO: load brew path variable
