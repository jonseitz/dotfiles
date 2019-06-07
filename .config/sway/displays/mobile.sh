#!/bin/sh
swaymsg output "*" disable
swaymsg output eDP-1 enable
killall waybar
exec waybar
