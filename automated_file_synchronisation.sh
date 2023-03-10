#!/usr/bin/env bash

# Set the source and destination directories
SOURCE_DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop/GITHUB"
DEST_DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop/GITHUB/dump"

# Sync the files
rsync -avz $SOURCE_DIR/ $DEST_DIR/
