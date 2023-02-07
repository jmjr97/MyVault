#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.hdmi-stereo'
speakers2='alsa_output.pci-0000_07_00.1.hdmi-stereo-extra1'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.pro-output-0'
# 蓼

swapOutput(){
	if [[ $(pactl get-default-sink NAME) == $headphones ]]; then		
		echo $(pactl set-default-sink alsa_output.pci-0000_07_00.1.hdmi-stereo-extra1)

	else
		echo $(pactl set-default-sink alsa_output.usb-Logitech_PRO_000000000000-00.pro-output-0)

	fi 
}


$1

