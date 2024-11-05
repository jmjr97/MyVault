#!/bin/bash

# Lists config files
menu() {
  printf "1. i3\n"
  printf "2. Neovim\n"
  printf "3. Polybar\n"
  printf "4. Polybar Modules\n"
  printf "5. Wezterm\n"
  printf "6. ZSH\n"
}

main() {
  choice=$(menu | rofi -dmenu -m -1 -i | cut -d. -f1)

  case $choice in
    1)
      wezterm start -e nvim $HOME/myrepo/i3/config
      break
      ;;
    2)
      wezterm start -e nvim $HOME/myrepo/nvim/init.lua
      break
      ;;
    3)
      wezterm start -e nvim $HOME/myrepo/polybar/config.ini
      break
      ;;
    4)
      wezterm start -e nvim $HOME/myrepo/polybar/modules.ini
      break
      ;;
    5)
      wezterm start -e nvim $HOME/myrepo/wezterm/wezterm.lua
      break
      ;;
    6)
      wezterm start -e nvim $HOME/myrepo/zsh/.zshrc
      break
      ;;
  esac
}

main
