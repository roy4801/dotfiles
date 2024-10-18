#!/bin/bash
OS=`uname -o`

# macos
if [[ "$OS" == "Darwin" ]]; then
	brew install vim
elif [[ "$OS" == "GNU/Linux" ]]; then
	# Ubuntu
	[[ -n "`lsb_release -a 2>/dev/null | grep Ubuntu`" ]] \
	&& sudo apt install -y vim

    # https://unix.stackexchange.com/questions/116539/how-to-detect-the-desktop-environment-in-a-bash-script
    if [ "$XDG_CURRENT_DESKTOP" = "" ]; then
      desktop=$(echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/')
    else
      desktop=$XDG_CURRENT_DESKTOP
    fi
    if ! [ "$XDG_CURRENT_DESKTOP" = "" ]; then
        sudo apt install -y vim-gtk3
    fi

fi

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall

# TODO:
# crontabs for auto checking update?
