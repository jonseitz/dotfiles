#!/bin/sh
swaymsg output "*" disable
swaymsg output eDP-1 enable 
swaymsg output eDP-1 pos 0 0 res 1920x1080 scale 1
swaymsg output "'Dell Inc. DELL U2717D 67YGV74R780L'" enable
swaymsg output "'Dell Inc. DELL U2717D 67YGV74R780L'" position 1920 0 res 2560x1440@60Hz scale 1
swaymsg output "'Dell Inc. DELL U2717D 67YGV75QAAPS'" enable 
swaymsg output "'Dell Inc. DELL U2717D 67YGV75QAAPS'" position 4480 0 res 2560x1440@60Hz scale 1
killall waybar
exec waybar
