#!/bin/sh

## Preconfig ##
source $HOME/.config/varsrc;
loadResources;
xrandr --output DVI-D-0 --pos 1920x &
xset r rate 350 90 &

## Program Autoload ##
sh $HOME/.fehbg &
pulseModLoad &
unclutter &
dunst &
sxhkd &
an2linuxserver.py &
oneko -dog &
picom -b &

## These directly affect DWM ##
sh $HOME/.config/cron/dwm-status.sh &
xsetroot -name "fsignal:xrdb" &
exec dbus-launch --exit-with-session dwm;
