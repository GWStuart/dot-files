#!/bin/bash
query="$( echo -e "  poweroff\n󰍁  logout\nsleep" | wofi --lines=4 --show dmenu -p "Search: ")"

