#!/bin/bash

# Check if ESLint is installed, and if not, install it
if ! command -v eslint &> /dev/null; then
    echo "ESLint is not installed. Installing ESLint..."
    npm install -g eslint
    if [ $? -eq 0 ]; then
        echo "ESLint installed successfully."
    else
        echo "Error: Failed to install ESLint. Please install ESLint manually before running this script."
        exit 1
    fi
fi

# Check if a JavaScript file is provided as an argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <filename.js>"
    exit 1
fi

# Extract the filename from the first argument
filename="$1"

# Run ESLint to review the JavaScript file
eslint "$filename"

# Check if ESLint reported any errors or warnings
if [ $? -eq 0 ]; then
    echo "JavaScript file review passed. No errors or warnings found."
else
    echo "JavaScript file review failed. Please check ESLint output for details."
fi