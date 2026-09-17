#!/bin/bash
time=$(date +"%H")
if (( $time >= 8 && $time < 19)) then
	noctalia msg wallpaper-set '~/Downloads/wallies/eldenring/sorceress_sellen_elden_ring.png'
else
	noctalia msg wallpaper-set '~/Downloads/wallies/eldenring/fia_the_deathbed_companion.png'
fi
