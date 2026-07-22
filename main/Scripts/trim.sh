#!/bin/bash

# Note that this script was generated with significant help form AI
# Just wanted to get something working quickly and I am not very skilled with bash
# Might make a more advanced versin in future probably using python but this works for now
# Essentially trims videos using FFMPEG but saves me having to remember all the codes.
# I created a bash alias for this script in my bashrc


# Check if a video file is provided
if [ $# -eq 0 ]; then
  echo "Invalid usage. You must provide a file to be cropped"
  exit 1
fi

# Assign the input video file to a variable
input_file="$1"

# Prompt for start time
read -p "Enter start time (format: HH:MM:SS): " start_time

# Prompt for end time
read -p "Enter end time (format: HH:MM:SS): " end_time

# Generate output file name
output_file="trimmed_${input_file}"

# Run the FFmpeg command to trim the video
ffmpeg -i "$input_file" -ss "$start_time" -to "$end_time" -preset slow "$output_file"

# Notify the user
echo "Trimmed video saved as $output_file"

