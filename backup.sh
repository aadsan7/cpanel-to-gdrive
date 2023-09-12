#!/bin/bash

# Compress the folder
echo "Archiving..."

tar -zcvf "backup_$(date '+%Y-%m-%d').tar.gz" /home/username

echo "Archiving completed."

# Upload the compressed file to Google Drive
echo "Uploading..."
/home/username/bin/gdrive files upload --parent YOURFOLDERSIDNAME "backup_$(date '+%Y-%m-%d').tar.gz"
echo "Uploaded."

echo "Cleaning up..."

# Delete the temporary file at the end of the process
rm "backup_$(date '+%Y-%m-%d').tar.gz"

echo "File Deleted."

echo "Archiving and uploading completed."
