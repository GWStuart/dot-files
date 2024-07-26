#!/bin/bash

# only solution I could come up with for now
# it will change opacity of all windows not just currenlty focused one
# requires having "bc" installed

step=$1
min_opacity=0.2

getoption="$(hyprctl getoption decoration:active_opacity)"
opts_list=( $getoption )
opacity=${opts_list[1]}

new_opacity="$(echo "$opacity - $step" | bc)"

below_min="$(echo "$new_opacity < $min_opacity" | bc)"
if [ $below_min -eq 1 ] 
then
    echo "reached min opacity"
    new_opacity=$min_opacity
fi

above_max="$(echo "$new_opacity > 1" | bc)"
if [ $above_max -eq 1 ] 
then
    echo "reached max opacity"
    new_opacity=1
fi

echo "changing opacity to: $new_opacity"
hyprctl keyword decoration:active_opacity $new_opacity
