#!/bin/bash

CONFIG_VSCODE="~/.config/Code/User/"

sudo apt-get install -y \
    wget curl \
    git vim

# Home setup
pushd "$(dirname "${BASH_SOURCE[0]}")"
cp ./bash_aliases ~/.bash_aliases
cp ./vimrc ~/.vimrc
cp ./vim ~/.vim -rv
cp ./gitconfig ~/.gitconfig

# VS Code setup
mkdir -p "${CONFIG_VSCODE}"
cp "./vscode/settings.json" "${CONFIG_VSCODE}/settings.json"
cp "./vscode/keybindings.json" "${CONFIG_VSCODE}/keybindings.json"

# End
echo "You are ready"
popd
