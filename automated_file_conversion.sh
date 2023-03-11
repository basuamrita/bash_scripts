#!/usr/bin/env bash

# Set the directory containing the files to convert
DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop/testing_songs"

# Convert the files from mp3 to wav
for file in $DIR/*.mp3;
 do
 ffmpeg -i "$file" -acodec pcm_s16le -ac 1 -ar 44100 "${file%.mp3}.wav"
done
# ffmpeg -i Lone_Ranger.mp4 Lone_Ranger.avi
