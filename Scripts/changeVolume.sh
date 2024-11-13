#!/bin/bash

msgID=1234
volume_change="$1"

if [ "$volume_change" = "toggle" ]; then
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    # notify-send "Toggled sound" -r $msgID
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
