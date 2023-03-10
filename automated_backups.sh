#!/usr/bin/env bash

# Set the backup location
BACKUP_DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop"

# Set the source directory to backup
SOURCE_DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop/GITHUB"

# Set the backup filename
BACKUP_FILENAME=backup_$(date +%Y%m%d).tar.gz

# Create the backup
#tar -cvzf $BACKUP_FILENAME *
tar -czf $BACKUP_DIR/$BACKUP_FILENAME -P $SOURCE_DIR
