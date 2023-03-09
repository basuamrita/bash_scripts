#!/bin/bash

# Set the directory containing the files to compress
DIR=/path/to/directory

# Set the compression format
FORMAT=tar.gz

# Compress the files
tar -czf $DIR/files.$FORMAT $DIR/*