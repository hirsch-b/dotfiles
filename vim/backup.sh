#!/bin/bash

CONFIG_VIM="${HOME}/.vim/"


pushd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null
find $PWD/* -not -name "backup.sh" -delete
cp -v "${HOME}/.vimrc" ./
cp -vR ${CONFIG_VIM}/* ./
popd > /dev/null
