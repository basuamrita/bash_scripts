#!/bin/bash

# Set the directory containing the files to convert
DIR=/path/to/directory

# Convert the files from mp3 to wav
for file in $DIR/*.mp3; do
  ffmpeg -i "$file" -acodec pcm_s16le -ac 1 -ar 44100 "${file%.mp3}.wav"
done