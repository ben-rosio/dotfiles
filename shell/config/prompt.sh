# If opened via vim, add a V to the prompt
if [[ -n "$VIM" ]]; then
    export PS1="$(echo $PS1 | sed 's/\\\$/ v\\$ /')"
fi
