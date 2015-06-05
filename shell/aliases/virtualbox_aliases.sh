alias grepvms='VBoxManage list vms | grep'
alias vmuuid="sed 's/.*{(.*)}.*/\1/'"
alias killvms='while read vm; do VBoxManage controlvm "$vm" poweroff; VBoxManage unregistervm --delete "$vm"; done'
