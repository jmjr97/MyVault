#!/bin/bash

if [ "$(playerctl --player=spotifyd status)" = "Playing" ]; then
    artist=`exec playerctl --player=spotifyd metadata xesam:artist`
    title=`exec playerctl --player=spotifyd metadata xesam:title`
    ( echo "$artist - $title" )
elif [ "$(playerctl --player=spotifyd status)" = "Paused" ]; then
    artist=`exec playerctl --player=spotifyd metadata xesam:artist`
    title=`exec playerctl --player=spotifyd metadata xesam:title`
    ( echo "(PAUSED) $artist - $title" )
else
    echo ""
fi
