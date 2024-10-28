#!/bin/sh

# Power menu script using rofi
#
LOCK=Lock
LOGOUT='Log Out'
REBOOT=Reboot
POWEROFF=Poweroff
SUSPEND=Suspend

outputoptions=$(xrandr -q | grep -e '\sconnected' | cut -d ' ' -f 1)

echo $outputoptions

chosen=$(printf $outputoptions | rofi -dmenu -i)


echo $chosen

# case "$chosen" in
# 	$LOCK) i3lock -c 000000 ;;
# 	$REBOOT) systemctl reboot ;;
# 	$POWEROFF) systemctl poweroff ;;
# 	$LOGOUT) sleep 1; i3-msg exit ;;
# 	$SUSPEND) sleep 1; systemctl suspend ;;
# 	*) exit 1 ;;
# esac
