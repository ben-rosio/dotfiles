# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -f ~/.bashrc.local ]; then
	source ~/.bashrc.local;
fi
