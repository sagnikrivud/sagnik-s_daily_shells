#!/bin/bash

# Load environment variables from .env
source .env


backup_dir="./DB"

# Get the current date and time
timestamp=$(date +%Y%m%d%H%M%S)
backup_file="$backup_dir/${DB_NAME}_backup_${timestamp}.sql"
mysqldump -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$backup_file"
if [ $? -eq 0 ]; then
    echo "Backup completed successfully. File saved as: $backup_file"
else
    echo "Backup failed."
fi