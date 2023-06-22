#!/bin/bash

if [ "$(playerctl status)" = "Playing" ]; then
    artist=`exec playerctl metadata xesam:artist`
    title=`exec playerctl metadata xesam:title`
    ( echo "$artist - $title" )
elif [ "$(playerctl status)" = "Paused" ]; then
    artist=`exec playerctl metadata xesam:artist`
    title=`exec playerctl metadata xesam:title`
    ( echo "(PAUSED) $artist - $title" )
else
    echo ""
fi
