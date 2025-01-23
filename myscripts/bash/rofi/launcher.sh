#!/bin/bash

main () {
  case $@ in
    lazygit)
      # kitty --class="__lazygit" lazygit -p ~/myrepo/
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__lazygit" lazygit -p ~/myrepo/
      ;;
    btop)
      # kitty --class="__btop" btop
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__btop" btop
      ;;
    bluetui)
      # kitty --class="__bluetui" bluetui
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__bluetui" bluetui
      ;;
    nmtui)
      # kitty --class="__nmtui" nmtui
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__nmtui" nmtui
      ;;
  esac
}

main $@
