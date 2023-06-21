#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.hdmi-stereo'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.analog-stereo'
# 蓼

function main() {


    init(){
    	if [[ $(pactl get-default-sink) == $headphones ]]; then		
            echo "%{T3}%{F#61afef}󰓃%{F-}%{T-}" 
    	else
            echo "%{T3}%{F#61afef}󰋋%{F-}%{T-}"
    	fi 
    }

    swap(){
    	if [[ $(pactl get-default-sink) == $headphones ]]; then		
    		pactl set-default-sink alsa_output.pci-0000_07_00.1.hdmi-stereo
            echo "%{T3}%{F#61afef}󰓃%{F-}%{T-}" 
    	else
    		pactl set-default-sink alsa_output.usb-Logitech_PRO_000000000000-00.analog-stereo
            echo "%{T3}%{F#61afef}󰋋%{F-}%{T-}"
    	fi 
    }

}

$1
