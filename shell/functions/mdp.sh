#!/usr/bin/env bash

function mdp() {
    pandoc -s -f markdown -t html $@ | lynx -stdin -nopause -nofilereferer -vikeys
}
