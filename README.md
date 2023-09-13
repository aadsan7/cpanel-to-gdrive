# cPanel to Google Drive Bash Backup and Upload Script

This is a simple Bash script that compresses a specific folder and uploads it to Google Drive. You can use this script to create automated backups.

## Prerequisites

Before using this script, make sure you have [glotlabs/gdrive](https://github.com/glotlabs/gdrive) installed and configured on your system.

## Usage

1. Download this script to your computer and save it in a location.
2. Before running the script, follow these steps to configure the necessary settings:

   - Update `/home/username` to the path of the folder you want to back up.
   - Replace `YOURFOLDERSIDNAME` with the ID of the folder where you want to store your backup on Google Drive.

3. To run the script, use the following command:

   ```bash
   ./backup.sh
