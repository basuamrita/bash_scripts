#!/bin/bash

# Set the source and destination directories
SOURCE_DIR=/path/to/source/directory
DEST_DIR=/path/to/destination/directory

# Sync the files
rsync -avz $SOURCE_DIR/ $DEST_DIR/
```