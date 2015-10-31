export OWNCLOUD_USER="bbarnett";

function owncloud() {
    if [[ $# -eq 0  ]]; then
        echo "No arguments specified. Usage:\n owncloud /tmp/test.md\n cat /tmp/test.md | owncloud test.md";
        return 1;
    fi;

    if tty -s; then
        echo $(curl -k --progress-bar --upload-file "$1" "https://cloud.zdatainc.com/upload/$OWNCLOUD_USER/");
    else
        echo $(curl -k --progress-bar --upload-file "-" "https://cloud.zdatainc.com/upload/$OWNCLOUD_USER/$1");
    fi;
}
