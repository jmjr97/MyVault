#!/bin/bash

imwheel -b "45"
ZDOTDIR=$HOME/.config/zsh
nitrogen --restore
$HOME/.config/polybar/launch.sh
picom -f &
