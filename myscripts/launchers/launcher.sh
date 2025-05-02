#!/bin/bash

main () {
  case $@ in
    lazygit)
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__lazygit" lazygit -p ~/myrepo/
      # wezterm start --class="__lazygit" lazygit -p ~/myrepo/
      ;;
    btop)
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__btop" btop
      # wezterm start --class="__btop" btop
      ;;
    bluetui)
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__bluetui" bluetui
      # wezterm start --class="__bluetui" bluetui
      ;;
    nmtui)
      wezterm --config-file ~/.config/wezterm/wezterm-float.lua start --class="__nmtui" nmtui
      # wezterm start --class="__nmtui" nmtui
      ;;
  esac
}

main $@
