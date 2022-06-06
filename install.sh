#!/bin/bash

CONFIG_VSCODE="${HOME}/.config/Code/User/"

sudo apt-get install -y \
    wget curl htop ncdu \
    git vim build-essentials python3 npm

pushd "$(dirname "${BASH_SOURCE[0]}")"
# Home setup
echo "Setting up home folder..."
cp ./bash_aliases ~/.bash_aliases
cp ./vimrc ~/.vimrc
cp ./vim ~/.vim -rv
cp ./gitconfig ~/.gitconfig

# VS Code setup
echo "Setting up VSCode..."
if [ -z $(which code) ]; then
    wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/vscode.deb
    sudo dpkg -i /tmp/vscode.deb
    rm /tmp/vscode.deb
fi
mkdir -p "${CONFIG_VSCODE}"
cp "./vscode/settings.json" "${CONFIG_VSCODE}/settings.json"
cp "./vscode/keybindings.json" "${CONFIG_VSCODE}/keybindings.json"
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension ms-azuretools.vscode-docker
code --install-extension mhutchie.git-graph
code --install-extension ms-vscode-remote.remote-containers
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode

# Python packages
echo "Setting up Python..."
pip install ipython tqdm mypy flake8 pipenv pew

# Python packages
echo "Setting up Node stuff..."
sudo npm intall -g n npx

# End
echo "You are ready"
popd
