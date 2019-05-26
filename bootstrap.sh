#!/usr/bin/env bash

# git pull origin master;

function syncFishFolder() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms ./fish/ ~/.config/fish;

	# Reload fish shell after that
	exec /usr/local/bin/fish -l;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	syncFishFolder;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		syncFishFolder;
	fi;
fi;
unset syncFishFolder;
