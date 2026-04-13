#!/bin/bash

sleep 1

WALLPAPER_DIR="$HOME/Wallpapers"

ROLL=$((RANDOM % 100)) 

if [ "$ROLL" -lt 90 ]; then
	WALLPAPER="$WALLPAPER_DIR/gambling1.png"
elif [ "$ROLL" -lt 99 ]; then
	WALLPAPER="$WALLPAPER_DIR/gambling2.jpg"
else
	WALLPAPER="$WALLPAPER_DIR/gambling3.png"
fi

awww img "$WALLPAPER"

