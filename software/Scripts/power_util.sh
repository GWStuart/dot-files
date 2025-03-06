#!/bin/bash
query="$( echo -e "   poweroff\n󰍁   logout\n󰤄   sleep" | wofi --style="$HOME/.config/wofi/power_style.css" --conf="$HOME/.config/wofi/power_config" --show dmenu)"
if [ "$query" = "   poweroff" ]; then
  poweroff
elif [ "$query" = "󰍁   logout" ]; then 
  # could do a swaylock or something 
  echo "not implemented yet"
elif [ "$query" = "󰤄   sleep" ]; then 
  systemctl suspend
fi
