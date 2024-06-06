#!/bin/bash
query="$( echo "" | wofi --style="/home/will/.config/wofi/search_style.css" --lines=1 --width=35% --location=2 --yoffset=36 --prompt="Find" --show dmenu)" 
[ -n "${query}" ] && firefox https://www.google.com/search?q="${query}" &
