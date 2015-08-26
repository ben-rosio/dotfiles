_projects() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ~/Projects)" -- $cur) )
}
complete -F _projects projects

projects() {
    cd ~/Projects/$1
}

# Returns a string representing the current semester based off date
_schoolSemester() {
    curTimestamp="$(date "+%s")"
    curYear="$(date "+%y")"

    while read line; do
        IFS=',' read -a lineData <<< "$line"
        name="${lineData[0]}"
        startYear="$(date -d "${lineData[1]}" "+%y")"
        startDate="$(date -d "${lineData[1]}" "+%s")"
        endDate="$(date -d "${lineData[2]}" "+%s")"

        if ((curTimestamp>=startDate && curTimestamp<=endDate)); then
            eval "$1='$name'"
            return 0
        fi;

        return 1
        echo "Failed to find current semester"
    done < ~/.dotfiles/school-semesters
}

_schoolDirectory() {
    year="$(date "+%y")"
    _schoolSemester semester

    eval "$1='${semester}${year}'"
    return 0
}

_school() {
    _schoolDirectory dir

    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ~/School/${dir})" -- $cur) )
}
complete -F _school school
complete -F _school sw

school() {
    _schoolDirectory dir
    cd ~/School/$dir/$1
}

sw() {
    _schoolDirectory dir
    cd ~/School/$dir/$1
}
