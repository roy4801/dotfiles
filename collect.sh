#!/bin/bash

OS=`uname -o`

if [[ "$OS" == "Darwin" ]]; then
    if ! [[ -d macos ]]; then mkdir macos; fi 
    cp -f ~/.vimrc ./macos/.vimrc
    cp -f ~/.zshrc ./macos/.zshrc
fi
