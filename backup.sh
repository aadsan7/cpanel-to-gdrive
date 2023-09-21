#!/bin/bash

# Variables
backup_folder="/home/username"
parent_folder_id="YOURFOLDERSIDNAME"
log_file="/path/to/log/backup_log_$(date '+%Y-%m-%d').txt"

# Redirect standard output and standard error to the log file
exec &> "$log_file"

# Compress the folder
echo "Archiving..."
tar_file="backup_$(date '+%Y-%m-%d').tar.gz"
tar -zcvf "$tar_file" "$backup_folder"
if [ $? -ne 0 ]; then
    echo "Error: Archive creation failed."
    exit 1
fi
echo "Archiving completed."

# Upload the compressed file to Google Drive
echo "Uploading..."
/home/username/bin/gdrive files upload --parent "$parent_folder_id" "$tar_file"
if [ $? -ne 0 ]; then
    echo "Error: Upload failed."
    exit 1
fi
echo "Uploaded."

# Cleaning up
echo "Cleaning up..."
rm "$tar_file"
if [ $? -ne 0 ]; then
    echo "Error: Cleanup failed."
    exit 1
fi
echo "File Deleted."

echo "Archiving and uploading completed."
