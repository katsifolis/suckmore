setxkbmap -layout 'us,gr' -option 'grp:alt_shift_toggle' -variant ',extended"' 
xmodmap ~/.speedswaper


while true
do 
	DATE=$(date +%H'->'%M)
	xsetroot -name "$DATE"
	sleep 5s
done &

feh --bg-fill ~/wall/red_sun.jpg

exec dwm

