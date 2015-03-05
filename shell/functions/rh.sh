function rh {
    eval $(history | egrep "^ *$1" | sed 's; *[0-9]* *;;')
}
