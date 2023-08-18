#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit
# killall -q polybar

# MIGHT GET THIS TO WORK LATER......

# Wait for processes
#while pgrep -x polybar >/dev/null; do sleep 1; done
#
#screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)
#
#if [[ $(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f4 | cut -d"+" -f2- | uniq | wc -1) == 1 ]]; then
#  MONITOR=$(polybar --list-monitors | cut-d":" -f1) TRAY_POS=right polybar main &
#else
#  primary=$(xrandr --query | grep primary | cut -d" " -f1)
#
#  for m in $screens; do
#    if [[ $primary == $m ]]; then
#      MONITOR=$m TRAY_POS=right polybar main $
#    else
#      MONITOR=$m TRAY_POS=none polybar secondary &
#    fi
#  done
#fi 

# Launch bars
polybar main & disown
polybar secondary & disown

#echo "Bars launched..."
