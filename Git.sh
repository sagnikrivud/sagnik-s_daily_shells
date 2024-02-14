#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <commit_message> <branch_name>"
    exit 1
fi

# Commit message and branch from command line arguments
commit_message="$1"
pull_branch="$2"
push_branch="$3"

git add .
git commit -m "$commit_message"

echo "Pulling the latest code..."
git pull origin "$pull_branch"


echo "Pushing changes to the repository..."
git push origin "$push_branch"

if [ $? -eq 0 ]; then
    echo "Updates sent to Git successfully!"
else
    echo "Some error occurred"
fi
