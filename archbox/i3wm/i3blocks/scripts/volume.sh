#!/bin/bash

# Click and Scroll actions on block
case $BLOCK_BUTTON in
  1)
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    ;;
  4)
    pactl set-sink-volume @DEFAULT_SINK@ +5%
    ;;
  5)
    pactl set-sink-volume @DEFAULT_SINK@ -5%
    ;;
esac

mute="$(pactl get-sink-mute @DEFAULT_SINK@)"

# Change display depending on Mute
if [[ $mute != "Mute: yes" ]]; then
  echo $(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
else
  echo "mute"
fi
