#!/bin/bash

OS=`uname -o`

[[ ! -d ~/.config ]] && mkdir ~/.config

# macos
if [[ "$OS" == "Darwin" ]]; then
	. ./install_macos.sh
	cp -f ./.config/macos.sh ~/.config/os-specific.sh

	# Copy the configs
	cp -f ./.vimrc ~/.vimrc
	cp -f ./.zshrc ~/.zshrc
elif [[ "$OS" == "GNU/Linux" ]]; then
	# Ubuntu
	[[ -n "`lsb_release -a 2>/dev/null | grep Ubuntu`" ]] \
	&& . ./install_ubuntu.sh

	cp -f ./.config/ubuntu.sh ~/.config/os-specific.sh
	# Copy the configs
	cp -f ./.vimrc ~/.vimrc
	cp -f ./.zshrc-ubuntu ~/.zshrc
fi
