#!/bin/sh
swaymsg output eDP-1 disable
swaymsg output "'Dell Inc. DELL U2717D 67YGV74R780L'" enable
swaymsg output "'Dell Inc. DELL U2717D 67YGV74R780L'" position 0 0
swaymsg output "'Dell Inc. DELL U2717D 67YGV75QAAPS'"  pos 2560 0
swaymsg output "'Dell Inc. DELL U2717D 67YGV75QAAPS'"  enable 
killall waybar
exec waybar
