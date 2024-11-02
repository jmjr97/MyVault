#!/bin/bash

# List of Rofi menu commands

rofi_menus=(

    "rofi -show run -modi run:run -theme solarized"  # Run applications

    "rofi -show dmenu -modi dmenu:dmenu -theme solarized" # Simple text menu

    "rofi -show window -modi window:window -theme solarized" # Window switcher

)

# Display the list of Rofi menus using Rofi

selected_menu=$(echo "${rofi_menus[@]}" | rofi -dmenu -i -p "Select Rofi Menu:")

# Execute the selected Rofi menu command

if [[ -n "$selected_menu" ]]; then
    eval "$selected_menu"
fi
