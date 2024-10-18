#!/bin/fish

export VCPKG_ROOT="~/github/vcpkg"
export VCPKG_INSTALLATION_ROOT="~/github/vcpkg"

function pbcopy
    xsel --input --clipboard 
end

function pbpaste
    xsel --output --clipboard
end

function skyrim-winecfg
    /home/zdmeyer/.bash-alias/skyrim-winecfg
end


function v
    nvim $argv 
end

function pacupdate
    sudo pacman -Syu
end

function cls
    clear
end

