#!/bin/bash

main () {
  echo $1
  echo $2

  case $1 in
    file)
      case $2 in
        main)
          i3-msg focus output primary
          thunar
          ;;
        side)
          i3-msg focus output nonprimary
          thunar
          ;;
      esac
      ;;
    web)
      case $2 in
        main)
          i3-msg focus output primary
          firefox
          ;;
        side)
          i3-msg focus output nonprimary
          firefox
          ;;
      esac
      ;;
    note)
      case $2 in
        main)
          i3-msg focus output primary
          obsidian
          ;;
        side)
          i3-msg focus output nonprimary
          obsidian
      ;;
      esac
  esac
}

main $1 $2
