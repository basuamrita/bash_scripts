#!/usr/bin/env bash

# Set the directory containing the files to compress
DIR="/mnt/c/Users/Rajdeep/OneDrive/Desktop"

# Set the compression format
FORMAT=tar.gz

# Compress the files
tar -czvf $DIR/files.$FORMAT $DIR/*
