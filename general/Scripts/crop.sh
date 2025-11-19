#!/bin/bash

# Note that this script was generated with significant help form AI
# Just wanted to get something working quickly and I am not very skilled with bash
# Might make a more advanced versin in future probably using python but this works for now
# Essentially crops videos using FFMPEG but saves me having to remember all the codes.
# I created a bash alias for this script in my bashrc

# Check if a file is provided
if [ $# -eq 0 ]; then
  echo "Invalid usage. You must provide a file to be cropped"
  exit 1
fi

# Input file
input_file="$1"

# Get crop values from the user
read -p "Enter crop top: " top
read -p "Enter crop bottom: " bottom
read -p "Enter crop left: " left
read -p "Enter crop right: " right

# Get original resolution using ffprobe
resolution=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 "$input_file")
width=$(echo $resolution | cut -d',' -f1)
height=$(echo $resolution | cut -d',' -f2)

# Calculate new dimensions
crop_width=$((width - left - right))
crop_height=$((height - top - bottom))

# Generate output filename
output_file="cropped_${input_file}"

# Run FFmpeg crop command
ffmpeg -i "$input_file" -filter:v "crop=${crop_width}:${crop_height}:${left}:${top}" -c:a copy "$output_file"

echo "Cropped video saved as $output_file"

