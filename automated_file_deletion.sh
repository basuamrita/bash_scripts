#!/bin/bash

# Set the directory containing the files to delete
DIR=/path/to/directory

# Delete files older than 7 days
find $DIR -type f -mtime +7 -delete