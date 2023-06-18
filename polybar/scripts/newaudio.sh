#!/bin/bash

speakers='alsa_output.pci-0000_07_00.1.3.hdmi-stereo'
headphones='alsa_output.usb-Logitech_PRO_000000000000-00.3.analog-stereo'

function main() {
    # Pipewire
    SINK=$(pactl get-default-sink NAME)
    VOLUME=$(pactl list sinks | sed -n "/${SINK}/,/Volume/ s!^[[:space:]]\+Volume:.* \([[:digit:]]\+\)%.*!\1!p")
    IS_MUTED=$(pactl list sinks | sed -n "/${SINK}/,/Mute/ s/Mute: \(yes\)/\1/p")

    action=$1
    if [ "${action}" == "up" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
    elif [ "${action}" == "down" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ -5%
    elif [ "${action}" == "mute" ]; then
        pactl set-sink-mute @DEFAULT_SINK@ toggle
    elif [ "${action}" == "swap" ]; then
        if [ ${SINK} == $headphones ]; then
            pactl set-default-sink alsa_output.pci-0000_07_00.1.3.hdmi-stereo 
        else 
            pactl set-default-sink alsa_output.usb-Logitech_PRO_000000000000-00.3.analog-stereo 
        fi
    else
        if [ ${SINK} == $headphones ]; then
            if [ "${IS_MUTED}" != "" ]; then
                echo "%{T3}%{F#61afef}󰋋%{F-}%{T-} %{F#d19a66}MUTED%{F-}"
            else
                echo "%{T3}%{F#61afef}󰋋%{F-}%{T-} %{F#d19a66}${VOLUME}%{F-}"
            fi
        else
            if [ "${IS_MUTED}" != "" ]; then
                echo "%{T3}%{F#61afef}󰓃%{F-}%{T-} %{F#d19a66}MUTED%{F-}"
            else
                echo "%{T3}%{F#61afef}󰓃%{F-}%{T-} %{F#d19a66}${VOLUME}%{F-}"
            fi
        fi
    fi
}

main $@
