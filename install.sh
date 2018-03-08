#!/bin/bash

echo Checking for curl
if ! which curl > /dev/null; then
    echo You need curl
    sudo apt-get install curl -y
fi

echo Getting Plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ":PlugUpdate" -c ":q" -c ":q"
