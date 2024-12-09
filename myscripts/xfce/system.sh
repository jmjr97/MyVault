#!/bin/bash

# memory
mem=$(free -m | grep Mem | awk '{print $3/1024}' | bc -l | xargs printf "%0.2f")

# temp
temp=$(sensors | grep Tctl | awk '{print substr($2,2);}')

if [[ $temp > 85 ]]; then
  temp_icon='!'
elif [[ $temp > 70 ]]; then
  temp_icon=''
elif [[ $temp > 55 ]]; then
  temp_icon=''
elif [[ $temp > 40 ]]; then
  temp_icon=''
else
  temp_icon=''
fi

echo $temp_icon' '$temp'   '$mem'GB'
