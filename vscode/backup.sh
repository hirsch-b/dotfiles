#!/bin/bash

CONFIG_VSCODE="${HOME}/.config/Code/User/"


pushd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null
cp -v "${CONFIG_VSCODE}keybindings.json" ./
cp -v "${CONFIG_VSCODE}settings.json" ./
popd > /dev/null
