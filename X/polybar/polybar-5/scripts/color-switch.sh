#!/bin/bash

SDIR="$HOME/.config/polybar/polybar-5/scripts"

MENU="$(rofi -sep "|" -dmenu -i -p 'Select' -location 1 -xoffset 1220 -yoffset 565 -columns 1 -width 10 -hide-scrollbar -line-padding 4 -padding 20 -lines 6 <<< " Mode-1| Mode-2| Mode-3| Mode-4| Mode-5| Mode-6")"
            case "$MENU" in
				## Light Colors
				*Mode-1) $SDIR/colors.sh -mode1 ;;
				*Mode-2) $SDIR/colors.sh -mode2 ;;
				*Mode-3) $SDIR/colors.sh -mode3 ;;
				*Mode-4) $SDIR/colors.sh -mode4 ;;
				*Mode-5) $SDIR/colors.sh -mode5 ;;
				*Mode-6) $SDIR/colors.sh -mode6
            esac