#!/bin/bash

WALLPAPER_DIR="$HOME/kiusaja/gambling/wallpaper"

ROLL=$((RANDOM % 100)) 

if [ "$ROLL" -lt 90 ]; then
	WALLPAPER="$WALLPAPER_DIR/gambling1.png"
elif [ "$ROLL" -lt 99 ]; then
	WALLPAPER="$WALLPAPER_DIR/gambling2.jpg"
else
	WALLPAPER="$WALLPAPER_DIR/gambling3.png"
fi

awww img "$WALLPAPER"

