#!/bin/bash

OS=`uname -o`

if [[ "$OS" == "Darwin" ]]; then
    if ! [[ -d macos ]]; then mkdir macos; fi 
    echo cp ~/.vimrc ./macos/.vimrc
    echo cp ~/.zshrc ./macos/.zshrc
fi
