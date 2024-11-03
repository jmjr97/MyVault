#!/bin/bash

myTerm=wezterm
myEdit=nvim

menu() {
  printf "1. Edit Configs\n"
  printf "2. File Finder\n"
  printf "3. LazyGit\n"
  printf "4. Notes\n"
  printf "5. Spotify\n"
  printf "6. VM Network\n"
  printf "7. arch-xfce VM\n"
  printf "8. win11 VM\n"
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
    6)
      pkexec virsh net-start default
      break
      ;;
    7)
      virsh --connect qemu:///system start "arch-xfce"
      virt-manager --connect qemu:///system --show-domain-console "arch-xfce"
      break
      ;;
    8)
      virsh --connect qemu:///system start "win11"
      virt-manager --connect qemu:///system --show-domain-console "win11"
      break
      ;;
  esac
}

main
