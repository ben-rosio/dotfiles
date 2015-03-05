function rh {
    exec $(history | egrep "^ *$1" | sed 's; *[0-9]* *;;')
}
