#!/bin/bash

# selection=$(find ~/Documents/obsidian-sync/ -name '*.md' | rofi -dmenu -i " Notes:")

selection=$(fd . --type file $HOME/Documents/obsidian-sync/ 2>/dev/null | \
    sed "s;$HOME/Documents/obsidian-sync/;~;" | \
    rofi -m -1 -sort -sorting-method fzf -disable-history -dmenu -no-custom -p -i " Notes:" | \
    sed "s;\~;$HOME/Documents/obsidian-sync/;"
)

wezterm start nvim "$selection"
