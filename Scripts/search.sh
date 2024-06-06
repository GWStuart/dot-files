#!/bin/bash
query="$( echo "" | wofi --style="/home/will/.config/wofi/search_style.css" --conf="/home/will/.config/wofi/search_config" --show dmenu)" 
[ -n "${query}" ] && firefox https://www.google.com/search?q="${query}" &
