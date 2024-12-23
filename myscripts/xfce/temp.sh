#!/bin/bash

function main() {
  action=$1

  # temp
  temp=$(sensors | grep Tctl | awk '{print substr($2,2);}')

  # icon
  if [[ $temp > 85 ]]; then
    temp_icon='!'
  elif [[ $temp > 70 ]]; then
    temp_icon=''
  elif [[ $temp > 55 ]]; then
    temp_icon=''
  elif [[ $temp > 40 ]]; then
    temp_icon=''
  else
    temp_icon=''
  fi

  # output
  if [ "${action}" == "icon" ]; then
    # echo '<txt><span foreground="#8aadf4">'$temp_icon'</span></txt>'
    echo '<txt><span foreground="#ffffff">'$temp_icon'</span></txt>'
  fi

  if [ "${action}" == "temp" ]; then
    # echo '<txt><span foreground="#ffffff">'$temp'</span></txt>'
    echo '<txt><span foreground="#8aadf4">'$temp'</span></txt>'
  fi
}

main $@
