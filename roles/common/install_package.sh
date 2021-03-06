#!/usr/bin/env bash

function InstallPackages {
    local Packages=$@
    local YumSource=$(command -v yum)
    if [[ ${YumSource} != "" ]]; then
      yum install -y ${Packages}
    fi

    local AptSource=$(command -v apt)
    if [[ ${AptSource} != "" ]]; then
      apt install -y ${Packages}
    fi
}
