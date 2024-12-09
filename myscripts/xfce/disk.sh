#!/bin/bash

# drives
root=$(df -H | grep /dev/nvme0n1p2 | awk '{print $5}')
games=$(df -H | grep /dev/sdb1 | awk '{print $5}')
storage=$(df -H | grep /dev/sda1 | awk '{print $5}')

echo '  󰋊 '$root'   '$games'   '$storage'  '
