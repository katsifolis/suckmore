#!/bin/sh
PS1="->"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

xrandr --output VGA-0 --primary --mode 1440x900 --pos 1920x0 --rotate normal --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
