#!/bin/bash

if pgrep -f "spotify_player -d" > /dev/null; then
  kitty spotify_player
else
  spotify_player -d &
  kitty spotify_player
fi
