while true
do
	VOL=$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')
	LOCALTIME=$(date +%H:%M-%x)
	OTHERTIME=$(TZ=Europe/London date +%Z\=%H:%M)
	IP=$(for i in `ip r`; do echo $i; done | grep -A 1 src | tail -n1) # can get confused if you use vmware
	TEMP="$(($(cat /sys/class/thermal/thermal_zone0/temp) / 1000))C"

	if acpi -a | grep off-line > /dev/null
	then
		BAT="$(acpi -b | awk '{ print $4}' | tr -d ',')"
		xsetroot -name "$TEMP $BAT $LOCALTIME "
	else
		BAT="$(acpi -b | awk '{ print $4}' | tr -d ',')"
		xsetroot -name "($BAT)|($TEMP)|($LOCALTIME)"
	fi
	sleep 5s
done &
setxkbmap -layout 'us,gr' -option 'grp:shifts_toggle' -variant ',,extended"' 
setxkbmap -option ctrl:swapcaps
export _JAVA_AWT_WM_NONREPARENTING=1
#wal -R > /dev/null
#xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --off --output LVDS1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA1 --mode 1024x768 --pos 1366x0 --rotate normal
# compton -b --config ~/.config/compton.conf
# xcompmgr &
xrdb ~/.Xresources
xbindkeys
feh --bg-scale ~/papes/pixelar/island_fires.png

# change wallpapers periodically
# SRC="${HOME}/papes/firewatch"  #/usr/share/wallpapers"
# 
# while true; do
#     feh -qrz --bg-scale $(echo "${SRC}") 2> /dev/null
#     sleep 1h
# done &

exec dwm
