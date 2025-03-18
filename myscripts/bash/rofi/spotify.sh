#!/bin/bash

main() {
  action=$1

  if [ "${action}" == "launch" ]; then
    if pgrep -f "spotify_player -d" > /dev/null; then
      # kitty  --class="__spotify" spotify_player
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__spotify" spotify_player
    else
      spotify_player -d &
      # kitty  --class="__spotify" spotify_player
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__spotify" spotify_player
    fi
  fi

  if [ "${action}" == "term" ]; then
    if pgrep -f "spotify_player -d" > /dev/null; then
      # kitty  --class="__spotify" spotify_player
      spotify_player
    else
      spotify_player -d &
      # kitty  --class="__spotify" spotify_player
      spotify_player
    fi
  fi
}

main $@
