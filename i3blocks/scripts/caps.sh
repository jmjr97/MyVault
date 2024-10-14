#!/bin/bash

case $(xset -q | grep Caps | awk '{print $4}') in
  off)
    exit 0
    ;;
  on)
    exit 33
    ;;
esac
