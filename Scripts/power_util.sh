#!/bin/bash
query="$( echo -e "   poweroff\n󰍁   logout\n󰤄   sleep" | wofi --style="$HOME/.config/wofi/power_style.css" --conf="$HOME/.config/wofi/power_config" --show dmenu)"
