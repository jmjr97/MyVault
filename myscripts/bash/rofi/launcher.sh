#!/bin/bash

main () {
  case $@ in
    lazygit)
      wezterm start --always-new-process lazygit -p ~/myrepo/
      ;;
    btop)
      kitty  --class="__btop" btop
      ;;
  esac
}

main $@
