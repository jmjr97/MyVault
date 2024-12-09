#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.hdmi-stereo-extra1'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.analog-stereo'
SINK=$(pactl get-default-sink NAME)

if [ $(pactl get-default-sink) == $headphones ]; then
  echo '󰋋 '
  # echo Headphones
fi

if [ $(pactl get-default-sink) == $speakers ]; then
  echo '󰓃 '
  # echo Speakers
fi
