#!/bin/bash

sleep 1

var=$(checkupdates | wc -l)

echo "$var"
