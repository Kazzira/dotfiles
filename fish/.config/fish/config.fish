if status is-interactive
    # Commands to run in interactive sessions can go here
    source $HOME/.config/fish/zdm_environment.fish
    eval "$(starship init fish)"
    
    fish_add_path "$HOME/github/vcpkg"
    fish_add_path "$HOME/.emacs.d/bin"
    fish_add_path "$HOME/.cargo/bin"


    export PYTHONSTARTUP="$HOME/.config/python-startup/startup.py"
    
end
