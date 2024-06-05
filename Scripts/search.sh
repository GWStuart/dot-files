#!/bin/bash
query="$( echo "" | wofi --style="/home/will/.config/wofi/search_style.css" --lines=1 --width=25% --location=2 --yoffset=36 --show dmenu -p "Search: ")" 
[ -n "${query}" ] && firefox https://www.google.com/search?q="${query}" &
