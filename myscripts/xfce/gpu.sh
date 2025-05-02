#!/bin/bash

function main() {
  action=$1

  # temp
  temp=$(nvidia-settings -q gpucoretemp | grep Attribute | awk -F'[^0-9]*' '{print $4}')

  echo '<txt><span foreground="#8aadf4">'$temp°C'</span></txt>'
}

main
