#!/bin/bash

# Variables
SOURCE_DIR="/home/$USER/mc-server/server"
BACKUP_DIR="mc:backups"
BACKUP_COUNT=4
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup-$DATE"

# Upload the folder to MEGA
cd $SOURCE_DIR
cd ..
echo "Compressing"
tar -czvf "$BACKUP_NAME.tar.gz" "world"
echo "Transferring"
rclone copy "$BACKUP_NAME.tar.gz" "$BACKUP_DIR/$BACKUP_NAME" -P
echo "Removing local backup"
rm "$BACKUP_NAME.tar.gz"
echo "Finished"

# Find and delete old backups
BACKUPS=$(rclone lsd "$BACKUP_DIR" | awk '{print $5}' | sort -r)
BACKUP_NUM=$(echo "$BACKUPS" | wc -l)

if [ "$BACKUP_NUM" -gt "$BACKUP_COUNT" ]; then
  DELETE_NUM=$(($BACKUP_NUM - $BACKUP_COUNT))
  DELETE_BACKUPS=$(echo "$BACKUPS" | tail -n $DELETE_NUM)

  for BACKUP in $DELETE_BACKUPS; do
    rclone purge "$BACKUP_DIR/$BACKUP"
  done
fi
