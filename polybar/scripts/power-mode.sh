#!/bin/bash

function main() {

    CHECK=$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -v)

    action=$1
    if [ "${action}" == "swap" ]; then
        xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T
    else
        if [ ${CHECK} == "false" ]; then
            echo "󰒲"
        else
            echo "󰒳"
        fi
    fi
}

main $@
