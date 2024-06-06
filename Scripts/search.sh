#!/bin/bash
query="$( echo "" | wofi --style="$HOME/.config/wofi/search_style.css" --conf="$HOME/.config/wofi/search_config" --show dmenu)" 
[ -n "${query}" ] && firefox https://www.google.com/search?q="${query}" &
