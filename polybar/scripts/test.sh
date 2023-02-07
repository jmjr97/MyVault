#!/bin/bash
#pactl set-default-sink alsa_output.usb-Logitech_PRO_000000000000-00.pro-output-0

SINK=$(pactl get-default-sink)
VOLUME=$(pactl get-sink-volume $SINK $N)
echo "$SINK $VOLUME"
