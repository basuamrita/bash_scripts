# Automated backups:
```
#!/bin/bash

# Set the backup location
BACKUP_DIR=/path/to/backup/directory

# Set the source directory to backup
SOURCE_DIR=/path/to/source/directory

# Set the backup filename
BACKUP_FILENAME=backup_$(date +%Y%m%d).tar.gz

# Create the backup
tar -czf $BACKUP_DIR/$BACKUP_FILENAME $SOURCE_DIR
```

# Automated file synchronization:

```
#!/bin/bash

# Set the source and destination directories
SOURCE_DIR=/path/to/source/directory
DEST_DIR=/path/to/destination/directory

# Sync the files
rsync -avz $SOURCE_DIR/ $DEST_DIR/
```

# Automated file renaming:

```
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
```

# Automated software installation:

```
#!/bin/bash

# Set the list of software packages to install
PACKAGES=(package1 package2 package3)

# Install the packages
for package in ${PACKAGES[@]}; do
  sudo apt-get install $package -y
done
```

# Automated file deletion:

```
#!/bin/bash

# Set the directory containing the files to delete
DIR=/path/to/directory

# Delete files older than 7 days
find $DIR -type f -mtime +7 -delete
```

# Automated file compression:

```
#!/bin/bash

# Set the directory containing the files to compress
DIR=/path/to/directory

# Set the compression format
FORMAT=tar.gz

# Compress the files
tar -czf $DIR/files.$FORMAT $DIR/*
```

# Automated file conversion:

```
#!/bin/bash

# Set the directory containing the files to convert
DIR=/path/to/directory

# Convert the files from mp3 to wav
for file in $DIR/*.mp3; do
  ffmpeg -i "$file" -acodec pcm_s16le -ac 1 -ar 44100 "${file%.mp3}.wav"
done
```

# Automated website backups:

```
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
```

Automated server monitoring:

```
#!/bin/bash

# Set the threshold values
CPU_THRESHOLD=80
MEMORY_THRESHOLD=90

# Check the CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d "." -f 1)

# Check the memory usage
MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d "." -f 1)

# Send an alert if a threshold is reached
if [ $CPU_USAGE -ge $CPU_THRESHOLD ] || [ $MEMORY_USAGE -ge $MEMORY_THRESHOLD ]; then
  echo "ALERT: CPU usage is at $CPU_USAGE% and memory usage is at $MEMORY_USAGE%"
  # Add code here to send an alert, e.g. via email or SMS
fi
```

# Automated log rotation:

```
#!/bin/bash
    
# Set the log file to rotate
LOG_FILE=/path/to/logfile.log

# Set the maximum size for the log file (in bytes)
MAX_LOG_SIZE=1048576

# Rotate the log file
if [ $(stat -c%s $LOG_FILE) -gt $MAX_LOG_SIZE ]; then
  mv $LOG_FILE $LOG_FILE.$(date +%Y%m%d)
  touch $LOG_FILE
fi
```