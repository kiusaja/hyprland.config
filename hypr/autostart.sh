#!/bin/bash
# Autostart config (Ich liebe dich <3)

# Autostart Programme
exec-once = swww-daemon & 

# waybar
exec-once = ~/.config/waybar/waybar.conf

# wallpaper
exec-once = waypaper --restore &

# udiskie -> Fürs mounten von externen usb-sticks, festplatten und co.
exec-once = udiskie &

# Internet
exec-once = nm-applet --indicator &
