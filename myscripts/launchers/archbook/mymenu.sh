#!/bin/bash

myTerm=wezterm
myEdit=nvim

menu() {
  printf "1. Edit Configs\n"
  printf "2. File Finder\n"
  printf "3. LazyGit\n"
  printf "4. Notes\n"
  printf "5. Spotify\n"
}

main() {
  choice=$(menu | rofi -dmenu -m -1 -i -p "Selection:"| cut -d. -f1)

  case $choice in
    1)
      $HOME/myrepo/myscripts/bash/rofi/configs.sh
      break
      ;;
    2)
      $HOME/myrepo/myscripts/bash/rofi/finder.sh
      break
      ;;
    3)
      wezterm start lazygit -p ~/myrepo/
      break
      ;;
    4)
      $HOME/myrepo/myscripts/bash/rofi/notes.sh
      break
      ;;
    5)
      $HOME/myrepo/myscripts/bash/rofi/spotify.sh
      break
      ;;
  esac
}

main
