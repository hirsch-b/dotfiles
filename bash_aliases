#!/bin/bash

alias j="jobs"

function gi() {
    if [[ $# -gt 0 ]]; then
        curl -L -s https://www.gitignore.io/api/$@ ;
    else
        gi visualstudio,visualstudiocode,windows,linux,vim,ruby,python,nodejs,npm,bower
    fi
}
