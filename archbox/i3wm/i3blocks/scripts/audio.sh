#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.hdmi-stereo-extra1'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.analog-stereo'

SINK=$(pactl get-default-sink NAME)

case $BLOCK_BUTTON in
  1)
    if [ ${SINK} == $headphones ]; then
      pactl set-default-sink $speakers 
      echo "󰓃"
      pkill -SIGRTMIN+11 i3blocks
    else
      pactl set-default-sink $headphones 
      echo "󰋋"
      pkill -SIGRTMIN+11 i3blocks
    fi
    ;;
  2)
    systemctl --user restart pipewire
    ;;
  3)
    pavucontrol
    ;;
esac

  if [ ${SINK} == $headphones ]; then
      echo "󰋋"
  else
      echo "󰓃"
  fi

