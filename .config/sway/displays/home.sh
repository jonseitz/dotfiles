#!/bin/sh
swaymsg output "*" disable
swaymsg output eDP-1 enable
swaymsg output eDP-1 position 2560 900
swaymsg output "'Unknown HP Z27 CN49220GZG'" enable
swaymsg output "'Unknown HP Z27 CN49220GZG'" scale 1.5
swaymsg output "'Unknown HP Z27 CN49220GZG'" position 0 0
killall waybar
exec waybar
