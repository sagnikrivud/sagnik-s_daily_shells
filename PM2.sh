#!/bin/bash

# Check if pm2 is installed
if ! command -v pm2 &> /dev/null; then
    echo "Error: pm2 is not installed. Installing pm2..."
    npm install -g pm2
fi

# Check if both application name and path are provided as command-line arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <application_name> <path_to_nodejs_app>"
    exit 1
fi

app_name="$1"
app_path="$2"
cd "$app_path"


npm install

# Start or restart the Node.js application using pm2
pm2 start app.js --name "$app_name" --watch

# Display pm2 logs for monitoring
pm2 logs "$app_name"