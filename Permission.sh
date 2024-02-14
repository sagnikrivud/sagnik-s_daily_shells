#!/bin/bash

# Check if both filename and permissions are provided as arguments
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <filename> <permissions>"
    exit 1
fi

# Extract the filename and permissions from the arguments
filename="$1"
permissions="$2"

# Change the permissions of the file
chmod "$permissions" "$filename"

# Check if the operation was successful
if [ $? -eq 0 ]; then
    echo "Permissions of $filename updated to $permissions."
else
    echo "Failed to change permissions of $filename."
fi