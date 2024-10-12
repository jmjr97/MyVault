#!/bin/bash

sink=$(pactl get-default-sink NAME)

case $BLOCK_BUTTON in
  4)
    pactl set-sink-volume $sink +5%
    pkill -SIGRTMIN+11 i3blocks
    ;;
  5)
    pactl set-sink-volume $sink -5%
    pkill -SIGRTMIN+11 i3blocks
    ;;
esac

echo $(pactl get-sink-volume $sink | awk '{print $5}')
