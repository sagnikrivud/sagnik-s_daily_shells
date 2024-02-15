#!/bin/bash

# Check if necessary parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi
# Extract parameters from command line arguments
source_dir="$1"
destination_dir="$2"

# Use rsync to synchronize the directories
rsync -av --delete "$source_dir/" "$destination_dir/"

# Check if the rsync command was successful
if [ $? -eq 0 ]; then
    echo "File synchronization completed successfully."
else
    echo "Error: Failed to synchronize files."
fi