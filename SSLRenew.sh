#!/bin/bash

# Certificate renewal script using Certbot

# Check if Certbot is installed
if ! command -v certbot &> /dev/null; then
    echo "Error: Certbot is not installed. Please install Certbot before running this script."
    exit 1
fi

# Check if domains are provided as command-line arguments
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <domain1> [domain2] [domain3] ..."
    exit 1
fi

# Set domains from command-line arguments
domains=("$@")

# Stop the web server (adjust based on your web server, e.g., Nginx, Apache)
sudo systemctl stop nginx

# Run Certbot to renew the certificate
certbot renew

# Check if the renewal was successful
if [ $? -eq 0 ]; then
    echo "Certificate renewal successful."

    # Restart the web server
    sudo systemctl start nginx
else
    echo "Error: Certificate renewal failed."
fi