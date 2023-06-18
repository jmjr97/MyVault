#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.3.hdmi-stereo'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.3.analog-stereo'
# 蓼

swapOutput(){
	if [[ $(pactl get-default-sink) == $headphones ]]; then		
		echo $(pactl set-default-sink alsa_output.pci-0000_07_00.1.3.hdmi-stereo)
	else
		echo $(pactl set-default-sink alsa_output.usb-Logitech_PRO_000000000000-00.3.analog-stereo)

	fi 
}


$1
