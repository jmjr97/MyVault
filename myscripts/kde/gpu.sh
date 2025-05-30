#!/bin/bash

function main() {
  action=$1

  # temp
  temp=$(nvidia-settings -q gpucoretemp | grep Attribute | awk '{print ($4+0)}')

  echo $temp'°C'
}

main
