#!/bin/bash

case $(pidof spotifyd | wc -l) in
  0)
    echo "starting spotifyd"
    spotifyd &
    ;;
  1)
    killall spotifyd
    echo "restarting spotifyd"
    spotifyd &
    ;;
esac

spotify_player
