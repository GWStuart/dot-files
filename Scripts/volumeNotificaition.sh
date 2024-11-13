#!/bin/bash

msgID=1234
volume="$(wpctl get-volume @DEFAULT_AUDIO_SINK@)"

notify-send "$volume" -r $msgID
