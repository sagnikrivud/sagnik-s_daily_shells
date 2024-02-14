#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

if [ -z "$MONGODB_URI" ]; then
  echo "Error: MONGODB_URI is not set in .env file."
  exit 1
fi

BACKUP_DIR="./DB"

TIMESTAMP=$(date +%Y%m%d%H%M%S)

# Run mongodump to perform the backup
mongodump --uri "$MONGODB_URI" --out $BACKUP_DIR/$TIMESTAMP

# Compress the backup files (optional)
tar -czf $BACKUP_DIR/$TIMESTAMP.tar.gz $BACKUP_DIR/$TIMESTAMP