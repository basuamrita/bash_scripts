#!/bin/bash

# Set the backup location
BACKUP_DIR=/path/to/backup/directory

# Set the website directory
WEBSITE_DIR=/var/www/html

# Set the backup filename
BACKUP_FILENAME=website_backup_$(date +%Y%m%d).tar.gz

# Backup the website files and database
tar -czf $BACKUP_DIR/$BACKUP_FILENAME $WEBSITE_DIR
mysqldump -u username -p password database_name > $BACKUP_DIR/website_backup_db_$(date +%Y%m%d).sql