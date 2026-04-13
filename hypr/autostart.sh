#!/bin/bash
# Autostart config (Ich liebe dich <3)

# Autostart Programme
exec-once = awww-daemon & 

# waybar
exec-once = ~/.config/waybar/waybar.conf

# wallpaper
exec-once = awww-daemon &
exec-once = awww img ~/Wallpapers/wallpaper.png

# udiskie -> Fürs mounten von externen usb-sticks, festplatten und co.
exec-once = udiskie &

# Internet
exec-once = nm-applet --indicator &
