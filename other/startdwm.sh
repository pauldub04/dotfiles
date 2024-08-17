#!/bin/sh

#setxkbmap us,ru -option grp:win_space_toggle
#setxkbmap us,ru -option grp:alt_shift_toggle
#setxkbmap us,ru -option grp:rctrl_toggle
#setxkbmap -option caps:escape

feh --bg-scale ~/Downloads/bg.jpg
dwmblocks &
flameshot &
#lxsession &
alttab -bg "#4a4a4a" -t 150x150 -i 150x64 -w 1 &

while true; do
	# with log
	dwm 2> ~/.dwm.log
	# no log
	# dwm >/dev/null 2>&1

	sleep 1
done

