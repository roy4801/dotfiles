#!/bin/bash

OS=$(uname -o)

if [[ "$OS" != "Darwin" ]]; then
    # Install brew
    [[ ! -e /usr/local/bin/brew ]] \
    && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update && brew upgrade
    brew install git wget
    
    # Install zsh
    brew install zsh
    chsh -s /bin/zsh
    echo Now shell is $SHELL

    # Install oh-my-zsh
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
    ## powerline9k
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    ## oh-my-zsh plugins
    brew install autojump
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    
    # Move the configuration files
    cp ./.vimrc ~/.vimrc
    cp ./.zshrc ~/.zshrc
fi

