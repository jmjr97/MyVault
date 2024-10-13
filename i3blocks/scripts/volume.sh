#!/bin/bash

sink=$(pactl get-default-sink NAME)

case $BLOCK_BUTTON in
  1)
    pactl set-sink-mute $sink toggle
    ;;
  4)
    pactl set-sink-volume $sink +5%
    ;;
  5)
    pactl set-sink-volume $sink -5%
    ;;
esac

mute="$(pactl get-sink-mute @DEFAULT_SINK@)"

if [[ $mute == "Mute: yes" ]]; then
  echo "mute"
else
  echo $(pactl get-sink-volume $sink | awk '{print $5}')
fi
