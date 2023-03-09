#!/bin/bash

# Set the directory containing the files to rename
DIR=/path/to/directory

# Set the file extension to rename
EXTENSION=.txt

# Set the naming convention
PREFIX=new_file_

# Rename the files
for file in $DIR/*$EXTENSION; do
  mv "$file" "$DIR/$PREFIX$(basename "$file")"
done