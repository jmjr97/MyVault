#!/bin/bash

# total=$(free -m | grep Mem | awk '{print $3/1024}')
echo $(free -m | grep Mem | awk '{print $3/1024}' | bc -l | xargs printf "%0.2f") GB
