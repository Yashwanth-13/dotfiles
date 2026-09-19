#!/bin/bash
time=$(date +"%H")
if (( $time >= 8 && $time < 19)) then
	noctalia msg wallpaper-set '~/Downloads/wallies/hades/melinoe.jpg'
else
	noctalia msg wallpaper-set '~/Downloads/wallies/hades/__melinoe_and_frinos.jpg'
fi
