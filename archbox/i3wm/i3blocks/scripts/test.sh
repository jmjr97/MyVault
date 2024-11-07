#!/bin/bash


case $BLOCK_BUTTON in
  1)
    if [ $(pidof xcape | wc -l) == 0 ]; then
      xcape -e 'Control_L=Escape'
    else
      killall xcape
    fi
    ;;
esac

case "$(pidof xcape | wc -l)" in
0)
  echo "Game"
  exit 33
  ;;
1)
  echo "Type"
  exit 0
  ;;
esac
