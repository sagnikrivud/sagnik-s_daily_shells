#!/bin/bash

# Load environment variables from .env using dotenv
eval "$(dotenv -f .env)"

# Backup file details
backup_date=$(date +%Y%m%d%H%M%S)
backup_file="DB/$DATABASE_NAME_backup_$backup_date.bak"  # Save in the "DB/" folder

# Create the "DB/" folder if it doesn't exist
mkdir -p DB

# Use sqlcmd to perform the backup
sqlcmd -S $SERVER_NAME -d $DATABASE_NAME -U $USERNAME -P $PASSWORD -Q "BACKUP DATABASE [$DATABASE_NAME] TO DISK='$backup_file'"

# Check if the sqlcmd command was successful
if [ $? -eq 0 ]; then
    echo "Database backup completed successfully. Backup file: $backup_file"
else
    echo "Error: Database backup failed."
fi