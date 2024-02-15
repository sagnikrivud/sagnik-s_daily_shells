#!/bin/bash

# Load environment variables from .env using dotenv
eval "$(dotenv -f .env)"

backup_date=$(date +%Y%m%d%H%M%S)
backup_file="DB/${DB_NAME}_backup_${backup_date}.sql"

# Check if the "DB/" folder exists, create it if not
if [ ! -d "DB" ]; then
    mkdir "DB"
fi
# Use pg_dump to create a backup
PGPASSWORD="$DB_PASSWORD" pg_dump -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" > "$backup_file"

if [ $? -eq 0 ]; then
    echo "Database backup completed successfully. Backup file: $backup_file"
else
    echo "Error: Database backup failed."
fi