#!/bin/bash

menu() {
  printf "1. Arch XFCE\n"
  printf "2. Arch Cosmic\n"
  printf "3. Nixos\n"
  printf "4. Window 11\n"
}

main() {
  choice=$(menu | rofi -dmenu -m -1 -i -p "Selection:"| cut -d. -f1)

  case $choice in
    1)
      virsh --connect qemu:///system start "arch-xfce"
      virt-manager --connect qemu:///system --show-domain-console "arch-xfce"
      break
      ;;
    2)
      virsh --connect qemu:///system start "arch-cosmic"
      virt-manager --connect qemu:///system --show-domain-console "arch-cosmic"
      break
      ;;
    3)
      virsh --connect qemu:///system start "nixos"
      virt-manager --connect qemu:///system --show-domain-console "nixos"
      break
      ;;
    4)
      virsh --connect qemu:///system start "win11"
      virt-manager --connect qemu:///system --show-domain-console "win11"
      break
      ;;
  esac
}

main
