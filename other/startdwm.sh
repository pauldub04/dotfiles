#!/bin/sh

#setxkbmap -option 'grp:rctrl_toggle' -layout 'us,ru'
#setxkbmap us,ru -option grp:win_space_toggle
#setxkbmap us,ru -option grp:alt_shift_toggle
setxkbmap us,ru -option grp:rctrl_toggle
setxkbmap -option caps:escape

feh --bg-scale ~/Downloads/bg.png
dwmblocks &

while true; do
	# with log
	dwm 2> ~/.dwm.log

	# no log
	# dwm >/dev/null 2>&1

	sleep 1
done

