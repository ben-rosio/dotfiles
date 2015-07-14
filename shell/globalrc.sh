# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [[ -f "$HOME/.bashrc.prepend" ]]; then
        . "$HOME/.bashrc.prepend"
fi
