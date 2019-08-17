#!/bin/bash

OS=`uname -o`

if [[ "$OS" == "Darwin" ]]; then
    if ! [[ -d macos ]]; then mkdir macos; fi
    cp -f ~/.vimrc .vimrc
    cp -f ~/.zshrc .zshrc
fi
