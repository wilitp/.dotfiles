#!/bin/sh

# Power menu script using rofi
#
LOCK=Lock
LOGOUT='Log Out'
REBOOT=Reboot
POWEROFF=Poweroff
SUSPEND=Suspend

chosen=$(printf "$LOCK\n$LOGOUT\n$REBOOT\n$POWEROFF\n$SUSPEND" | rofi -dmenu -i)
case "$chosen" in
	$LOCK) i3lock -c 000000 ;;
	$REBOOT) systemctl reboot ;;
	$POWEROFF) systemctl poweroff ;;
	$LOGOUT) sleep 1; i3-msg exit ;;
	$SUSPEND) sleep 1; systemctl suspend ;;
	*) exit 1 ;;
esac
