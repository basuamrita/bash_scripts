#!/usr/bin/env bash

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