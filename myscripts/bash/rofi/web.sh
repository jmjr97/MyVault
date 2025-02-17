#!/bin/bash

main() {
  choice=$(rofi -dmenu -m -1 -i -p "Website:")
  firefox $choice
} 

main
