alias vim="nvim"

alias ll='ls -lah'

alias myip='curl ifconfig.co -q'

alias cpv='rsync -poghb --backup-dir /tmp/rsync -e /dev/null --progress --'

alias env="env | egrep -iv '(secret|password)'"

alias elixer='echo Did you mean iex?' # Because fuck iex as a command

alias clearll='clear;ll'
alias cll='clear;ll'

alias gs='git status'

alias format_json='python -mjson.tool'

alias genpass="< /dev/urandom tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | head -c 32"
