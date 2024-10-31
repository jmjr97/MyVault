#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.hdmi-stereo-extra1'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.analog-stereo'

function main() {
  action=$1

  SINK=$(pactl get-default-sink NAME)

  if [ "${action}" == "swap" ]; then
    if [ ${SINK} == $headphones ]; then
      pactl set-default-sink $speakers 
      echo 󰓃
    else 
      pactl set-default-sink $headphones 
      echo 󰋋
    fi
  fi

  if [ "${action}" == "" ]; then
    if [ ${SINK} == $headphones ]; then
      echo 󰋋
    else 
      echo 󰓃
    fi
  fi

}

main $@
