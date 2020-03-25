#!/bin/sh
swaymsg output eDP-1 enable
swaymsg output eDP-1 position 2560 250
swaymsg output "'Unknown HP Z27 CN49220GZG'" enable
swaymsg output "'Unknown HP Z27 CN49220GZG'" scale 1.5
swaymsg output "'Unknown HP Z27 CN49220GZG'" position 0 0
swaymsg output "*" background /usr/share/backgrounds/what-the-hex-dark.png tile
killall waybar
exec waybar
