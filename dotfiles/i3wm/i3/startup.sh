#!/bin/bash

# Configire Displays
xrandr --output HDMI-0 --mode 1920x1080 --rate 75 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --mode 1920x1080 --primary --rate 75 --pos 0x0 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off
# xrandr --output HDMI-0 --off --output DP-0 --off --output DP-1 --mode 1920x1080 --rate 75 --pos 1920x0 --rotate normal --output DP-2 --off --output DP-3 --primary --mode 1920x1080 --rate 75 --pos 0x0 --rotate normal --output DP-4 --off --output DP-5 --off

# Autostart
xfce4-power-manager &
dunst &
lxsession &
nitrogen --restore &
picom &
# setxkbmap -layout us,de &

sleep 1
# discord --start-minimized --disable-gpu &
steam -silent &
flameshot &
discord --start-minimized &
sleep 2
i3-msg workspace 1
