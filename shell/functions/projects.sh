_projects() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls $PROJECT_DIRECTORY)" -- "$cur") )
}
complete -F _projects p

p() {
    cd $PROJECT_DIRECTORY/$1
}
