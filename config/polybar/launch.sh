#!/bin/bash

killall polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top -c ~/.config/polybar/config &
  done
else
  polybar --reload top -c ~/.config/polybar/config &
fi
