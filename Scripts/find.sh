#!/bin/bash
query="$( python ~/Scripts/find.py | wofi --style="$HOME/.config/wofi/find_style.css" --conf="$HOME/.config/wofi/find_config" --show dmenu)" 
# python ~/Scripts/find.py | wofi --show dmenu
alacritty --working-directory=${query}
