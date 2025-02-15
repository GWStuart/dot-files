#!/bin/bash

msgID=1234
volume_change="$1"

if [ "$volume_change" = "toggle" ]; then
    if wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q "\[MUTED\]"; then
        notify-send "Audio Un-Muted 󰕾" -r $msgID
    else
        notify-send "Audio Muted 󰖁" -r $msgID
    fi
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    exit 0
fi

absolute="${volume_change#[-+]}"
volume="$(wpctl get-volume @DEFAULT_AUDIO_SINK@)"
volume="${volume#Volume: }"

# Check the sign of the number
if [[ "$volume_change" == +* ]]; then
    # Positive number
    wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ "$absolute%+"
    newVolume=$(echo "scale=1; $volume * 100 + $absolute" | bc)
else
    # Negative number
    wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ "$absolute%-"
    newVolume=$(echo "scale=1; $volume * 100 - $absolute" | bc)
fi


roundedVolume=$(printf "%.0f" "$newVolume")

notify-send "$roundedVolume%" -r $msgID -h int:value:"$roundedVolume" -a volume
