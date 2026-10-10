#!/bin/bash
time=$(date +"%-H")
if (( $time >= 8 && $time < 19)) then
	noctalia msg wallpaper-set eDP-1 '~/Downloads/wallies/hades/city.png'
	noctalia msg wallpaper-set HDMI-A-1 '~/Downloads/wallies/hades/meli_ares.jpg'
else
	noctalia msg wallpaper-set eDP-1 '~/Downloads/wallies/hades/moon.jpg'
	noctalia msg wallpaper-set HDMI-A-1 '~/Downloads/wallies/hades/meli_hecate.jpg'
fi
