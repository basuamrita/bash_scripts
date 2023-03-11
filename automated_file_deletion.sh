#!/usr/bin/env bash

# Set the directory containing the files to delete
DIR=/mnt/c/Users/Rajdeep/OneDrive/Desktop/code_linux

# Delete files older than 7 days
find $DIR -type f -mtime +7 -delete
