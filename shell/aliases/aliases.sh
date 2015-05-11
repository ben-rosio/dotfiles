alias ip='curl curlmyip.com -q'

alias cpv="rsync -poghb --backup-dir /tmp/rsync -e /dev/null --progress --"

alias env="env | grep -iv 'secret' | grep -iv 'password'"
