#!/bin/bash

pacmanUpdates=$(pacman -Qu | wc -l)
aurUpdates=$(yay -Qu | wc -l)
updates=$((pacmanUpdates + aurUpdates))
echo "$updates"
