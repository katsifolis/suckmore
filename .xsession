export _JAVA_AWT_WM_NONREPARENTING=1

# use UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load Xresources file
xrdb -merge $HOME/.Xresources

# set your background color
xsetroot -solid dimgray

# xidle will lock your display after a period of inactivity
xidle &

# disable system beep
xset b off

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
#
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 
xinput set-prop "/dev/wsmouse" "Device Accel Constant Deceleration" 0.2

# Touchpad
xinput set-prop "/dev/wsmouse0" "Device Accel Constant Deceleration" 0.55

# use caps lock as ctrl key
setxkbmap -option ctrl:nocaps
setxkbmap -layout 'us,gr' -option 'grp:shifts_toggle' -variant ',,extended"' 

# Screensaver
xidle -ne -delay 1 -timeout 7200 -program /usr/xlock -mode random &

# Status Bar
slstatus &

# DWM
exec dwm
