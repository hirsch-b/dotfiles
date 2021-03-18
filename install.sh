#!/bin/bash

sudo apt-get install -y \
    wget curl \
    git vim

cp ./bash_aliases ~/.bash_aliases
cp ./vimrc ~/.vimrc
cp ./vim ~/.vim -rv
