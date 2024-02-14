#!/bin/bash

# Check if email is provided as an argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <email>"
    exit 1
fi

# Extract the email from the arguments
email="$1"

# Generate SSH key pair
ssh-keygen -t rsa -b 4096 -C "$email"

# Check if the key generation was successful
if [ $? -eq 0 ]; then
    echo "SSH key generated successfully."

    # Add the private key to the SSH agent
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa

    echo "SSH key added to SSH agent."
else
    echo "Failed to generate SSH key."
fi