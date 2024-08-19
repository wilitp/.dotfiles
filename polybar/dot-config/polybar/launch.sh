#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar example 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."

# set battery and adapter
BAT=$(ls /sys/class/power_supply  | grep BAT)
AD=$(ls /sys/class/power_supply  | grep AD)

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    logfile="/tmp/polybar$m.log"
    echo "---" >> $logfile
    echo $logfile
    BATTERY=$BAT ADAPTER=$AD MONITOR=$m polybar example 2>&1 | tee -a $logfile & disown
  done
else
  polybar --reload example & disown
fi
