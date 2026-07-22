#!/bin/bash

# Usage: change_opacity.sh [increase|decrease]

DIRECTION=$1
INCREMENT=0.05
MIN_OPACITY=0.1
MAX_OPACITY=1.0

# Get window under mouse
WIN_ID=$(xdotool getmouselocation --shell | grep WINDOW | cut -d '=' -f 2)

# Get current opacity (fallback to full if none)
CURRENT_OPACITY_HEX=$(xprop -id "$WIN_ID" _NET_WM_WINDOW_OPACITY 2>/dev/null | awk '{print $3}')
if [ -z "$CURRENT_OPACITY_HEX" ]; then
  CURRENT_OPACITY=1.0
else
  CURRENT_OPACITY=$(echo "scale=4; $CURRENT_OPACITY_HEX / 4294967295" | bc -l)
fi

# Modify opacity
if [ "$DIRECTION" == "increase" ]; then
  NEW_OPACITY=$(echo "$CURRENT_OPACITY + $INCREMENT" | bc -l)
else
  NEW_OPACITY=$(echo "$CURRENT_OPACITY - $INCREMENT" | bc -l)
fi

# Clamp between min and max
if (( $(echo "$NEW_OPACITY > $MAX_OPACITY" | bc -l) )); then
  NEW_OPACITY=$MAX_OPACITY
fi
if (( $(echo "$NEW_OPACITY < $MIN_OPACITY" | bc -l) )); then
  NEW_OPACITY=$MIN_OPACITY
fi

# Convert to 32-bit opacity value
OPACITY_HEX=$(printf "0x%x\n" $(echo "$NEW_OPACITY * 4294967295" | bc | cut -d '.' -f 1))

# Set opacity
xprop -id "$WIN_ID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$OPACITY_HEX"

