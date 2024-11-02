#!/bin/bash

menu() {
  printf "1. Open Spotify\n"
  printf "2. Restart Daemon and Restart\n"
}

main() {
  choice=$(menu | rofi -m -1 -dmenu -i -p "Selection:"| cut -d. -f1)

  case $choice in
    1)
      wezterm start spotify_player
      break
      ;;
    2)
      killall spotifyd
      spotifyd &
      wezterm start spotify_player
      break
      ;;
  esac
}

main
