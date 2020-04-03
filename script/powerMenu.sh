#! /usr/bin/bash

MENU="$(rofi -sep "|" -dmenu -i -p 'Power' -width 15\
	-fake-background\
       	-hide-scrollbar -line-padding 4 -padding 15\
       	-lines 4 -font "Fantasque Sans Mono 13" <<< " Lock|  Logout| Reboot| Shutdown")"
            case "$MENU" in
                *Lock) i3exit lock;;
                *Logout) i3exit logout;;
                *Reboot) systemctl reboot ;;
                *Shutdown) systemctl -i poweroff
esac
