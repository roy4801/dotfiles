#!/bin/bash

# macos
if [[ "$OS" == "Darwin" ]]; then
    cp -f ~/.vimrc .vimrc
    cp -f ~/.zshrc .zshrc
elif [[ "$OS" == "GNU/Linux" || "$(uname)" == "Linux" ]]; then
    cp -f ~/.vimrc .vimrc
    cp -f ~/.zshrc .zshrc-ubuntu
    cp -f ~/.p10k.zsh .p10k.zsh
fi
