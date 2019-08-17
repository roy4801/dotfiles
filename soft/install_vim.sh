#!/bin/bash
OS=`uname -o`

# macos
if [[ "$OS" == "Darwin" ]]; then
	brew install vim
elif [[ "$OS" == "GNU/Linux" ]]; then
	# Ubuntu
	[[ -n "`lsb_release -a 2>/dev/null | grep Ubuntu`" ]] \
	&& sudo apt install -y vim
fi

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall

# TODO:
# crontabs for auto checking update?