#!/bin/bash

main () {
  case $@ in
    lazygit)
      kitty --class="__lazygit" lazygit -p ~/myrepo/
      # wezterm start --always-new-process lazygit -p ~/myrepo/
      ;;
    btop)
      kitty --class="__btop" btop
      ;;
    bluetui)
      kitty --class="__bluetui" bluetui
      ;;
    nmtui)
      kitty --class="__nmtui" nmtui
      ;;
  esac
}

main $@
