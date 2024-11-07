#!/bin/bash

function main() {
  action=$1
  if [ "${action}" == "game" ]; then
    if [ $(pidof xcape | wc -l) == 0 ]; then
      xcape -e 'Control_L=Escape'
      echo %{F#8aadf4}Game%{F-}
    else
      killall xcape
      echo %{F#ed8796}Game%{F-}
    fi
  fi

  if [ "${action}" == "" ]; then
    if [ $(pidof xcape | wc -l) == 0 ]; then
      echo %{F#ed8796}Game%{F-}
    else
      echo %{F#8aadf4}Game%{F-}
    fi
  fi

}

main $@
