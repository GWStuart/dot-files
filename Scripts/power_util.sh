#!/bin/bash
query="$( echo -e "   poweroff\n󰍁   logout\n󰤄   sleep" | wofi --width=15% --location=2 --yoffset=36 --lines=4 --content_halign="center" --hide_search="true" --show dmenu -p "Search")"

