#!/bin/bash
query="$( echo "" | wofi --style="$HOME/.config/wofi/search_style.css" --conf="$HOME/.config/wofi/search_config" --prompt="Find" --show dmenu)" 
exec "alacritty --working-directory=${query}"
