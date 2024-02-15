#!/bin/bash

# Check if necessary parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi
source_dir="$1"
backup_dir="$2"

timestamp=$(date +%Y%m%d%H%M%S)

# Create a backup file name
backup_file="$backup_dir/application_backup_$timestamp.tar.gz"
echo "Source directory is '$source_dir'"
tar -czf "$backup_file" -C "$source_dir" .

# Check if the tar command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully. File saved as: $backup_file"
else
    echo "Error: Failed to create backup."
fi
