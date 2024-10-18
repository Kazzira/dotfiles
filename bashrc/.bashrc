#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/github/vcpkg:$HOME/.emacs.d/bin:$HOME/bin:$PATH"
export WINE="/usr/bin/wine"
export WINETRICKS="/usr/bin/winetricks"
export WINEPATH="Z:\\home\\zdmeyer\\.local\\share\\Steam\\steamapps\\compatdata\\489830\\pfx\\drive_c\\Program Files\\dotnet"
export VCPKG_ROOT="$HOME/github/vcpkg"
export VCPKG_INSTALLATION_ROOT="$HOME/github/vcpkg"
export PYTHONSTARTUP="$HOME/.config/python-startup/startup.py"
#export GTK_THEME=Adwaita:dark
#export QT_STYLE_OVERRIDE=adwaita-dark
#export LESS='-R --use-color -Dd+r$Du+b$'

alias skyrim-winecfg=/home/zdmeyer/.bash-alias/skyrim-winecfg

function pbcopy()
{
    xsel --input --clipboard
}

function pbpaste()
{
    xsel --output --clipboard
}


# Because I'm a windows user...
alias cls='clear'

# Vim and Emacs
alias v='nvim'

alias emacs='emacsclient -c'
alias less='less -r'
