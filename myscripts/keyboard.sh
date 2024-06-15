#!/bin/bash

CHECK=$(setxkbmap -query | grep layout)
us='layout:     us'
de='layout:     de'

function main() {
    if [[ ${CHECK} == $us ]]; then
        setxkbmap de
    else
        setxkbmap us
    fi
}

main
