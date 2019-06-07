#!/bin/sh
swaymsg output eDP-1 enable
swaymsg output eDP-1 position 0 900 
swaymsg output "'Dell Inc. DELL U2412M YMYH14863FFL'" enable 
swaymsg output "'Dell Inc. DELL U2412M YMYH14863FFL'" position 1920 0
swaymsg output "'Dell Inc. DELL E2014H 12MWY4AN2FGU'" enable
swaymsg output "'Dell Inc. DELL E2014H 12MWY4AN2FGU'" position 3520 0
killall waybar
exec waybar
