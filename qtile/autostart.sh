#!/bin/sh

# Config display
sh /home/h4cknet/scripts/windows.sh 

# set wallpaper
feh --bg-scale /home/h4cknet/Imágenes/Wallpapers/*.jpg &

# set picom
pkill picom
picom --experimental-backends &

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

# Ntfs disk support
udiskie -t &
nm-applet &

# Auth disks NTFS
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

# Clock update
ntpdate pool.ntp.org
