#!/bin/bash

if pgrep -f "spotify_player -d" > /dev/null; then
  wezterm start spotify_player
else
  spotify_player -d &
  wezterm start spotify_player
fi
