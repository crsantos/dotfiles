#!/usr/bin/env bash

function brewBundleDump() {

    echo "saving /tmp/Brewfile copy"
    mv Brewfile /tmp
	
    # Run bundle dump command to generate a new Brewfile
	brew bundle dump --file="./Brewfile"
    echo "Brewfile dump complete."
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
	brewBundleDump;
else
	read -p "This may overwrite existing files in your dotfiles dir. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		brewBundleDump;
	fi;
fi;
unset brewBundleDump;
