#!/bin/sh
swaymsg output "*" disable
swaymsg output eDP-1 enable
swaymsg output DP-1 enable
swaymsg output DP-1 mode 1920x1080@60Hz
swaymsg output "*" background /usr/share/backgrounds/what-the-hex-dark.png tile
killall waybar
exec waybar
