#!/bin/bash

# Set the backup location
BACKUP_DIR=/path/to/backup/directory

# Set the source directory to backup
SOURCE_DIR=/path/to/source/directory

# Set the backup filename
BACKUP_FILENAME=backup_$(date +%Y%m%d).tar.gz

# Create the backup
tar -czf $BACKUP_DIR/$BACKUP_FILENAME $SOURCE_DIR