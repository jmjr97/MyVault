#!/bin/bash

if pgrep -f "spotify_player -d" > /dev/null; then
  # kitty  --class="__spotify" spotify_player
  wezterm start spotify_player
else
  spotify_player -d &
  # kitty  --class="__spotify" spotify_player
  wezterm start spotify_player
fi
