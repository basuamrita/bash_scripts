#!/usr/bin/env bash

# Set the log file to rotate
LOG_FILE="/mnt/c/Users/Rajdeep/OneDrive/Desktop/var/log"

# Set the maximum size for the log file (in bytes)
MAX_LOG_SIZE="1048576"

# Rotate the log file
if [ $(stat -c%s $LOG_FILE) -gt $MAX_LOG_SIZE ] 
then
  mv $LOG_FILE $LOG_FILE.$(date +"%Y-%m-%d")
  touch $LOG_FILE
fi
