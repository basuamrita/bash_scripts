#!/usr/bin/env bash

# Set the directory containing the files to rename
DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop/testing2"

# Set the file extension to rename
EXTENSION=.txt

# Set the naming convention
PREFIX=new_file_

# Rename the files
for file in $DIR/*$EXTENSION; do
  mv "$file" "$DIR/$PREFIX$(basename "$file")"
done
