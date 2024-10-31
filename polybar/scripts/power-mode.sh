#!/bin/bash

function main() {

  CHECK=$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -v)

  action=$1
  if [ "${action}" == "swap" ]; then
    xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T

    if [ ${CHECK} == "false" ]; then
      echo %{F#ed8796}%{F-}
    else
      echo %{F#8aadf4}󰤄%{F-}
    fi
  fi

  if [ "${action}" == "" ]; then
    if [ ${CHECK} == "false" ]; then
      echo %{F#8aadf4}󰤄%{F-}
    else
      echo %{F#ed8796}%{F-}
    fi
  fi
}

main $@
