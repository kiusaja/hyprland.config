# Autostart config (Ich liebe dich <3)

# Autostart Programme
swww-daemon & 

# waybar
exec ~/.config/waybar/waybar.conf

# wallpaper
sleep 1 
waypaper --restore &

# udiskie -> Fürs mounten von externen usb-sticks, festplatten und co.
exec-once = udiskie &

# Internet
exec-once = /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
exec-once = nm-applet --indicator
