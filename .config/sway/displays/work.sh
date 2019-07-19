#!/bin/sh
swaymsg output * disable
swaymsg output eDP-1 enable 
swaymsg output eDP-1 pos 5120 1000
swaymsg output "'Dell Inc. DELL U2717D 67YGV74R780L'" enable
swaymsg output "'Dell Inc. DELL U2717D 67YGV74R780L'" position 0 0
swaymsg output "'Dell Inc. DELL U2717D 67YGV75QAAPS'"  enable 
swaymsg output "'Dell Inc. DELL U2717D 67YGV75QAAPS'"  position 2560 0
killall waybar
exec waybar
