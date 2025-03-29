#!/bin/bash

# Lists config files
menu() {
  printf "1. i3\n"
  printf "2. Neovim\n"
  printf "3. Kitty\n"
  printf "4. Polybar\n"
  printf "5. Polybar Modules\n"
  printf "6. Wezterm\n"
  printf "7. ZSH\n"
}

main() {
  choice=$(menu | rofi -dmenu -m -1 -i | cut -d. -f1)

  case $choice in
    1)
      wezterm start -e nvim $HOME/.config/i3/config
      break
      ;;
    2)
      wezterm start -e nvim $HOME/.config/nvim/init.lua
      break
      ;;
    3)
      wezterm start -e nvim $HOME/.config/kitty/kitty.conf
      break
      ;;
    4)
      wezterm start -e nvim $HOME/.config/polybar/config.ini
      break
      ;;
    5)
      wezterm start -e nvim $HOME/.config/polybar/modules.ini
      break
      ;;
    6)
      wezterm start -e nvim $HOME/.config/wezterm/wezterm.lua
      break
      ;;
    7)
      wezterm start -e nvim $HOME/.config/zsh/.zshrc
      break
      ;;
  esac
}

main
