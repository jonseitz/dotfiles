#!/bin/sh
MONITOR_PRIMARY="'Unknown HP Z27 CN49220GZG'"
swaymsg output eDP-1 enable
swaymsg output eDP-1 position 3850 540 
swaymsg output "$MONITOR_PRIMARY" enable
swaymsg output "$MONITOR_PRIMARY" scale 1
swaymsg output "$MONITOR_PRIMARY" position 0 0
swaymsg workspace 1
swaymsg move workspace to output "$MONITOR_PRIMARY"
swaymsg output "*" background /usr/share/backgrounds/what-the-hex-dark.png tile
killall waybar
exec waybar
