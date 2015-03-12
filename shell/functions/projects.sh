_projects() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ~/Projects)" -- $cur) )
}
complete -F _projects projects

projects() {
    cd ~/Projects/$1
}
