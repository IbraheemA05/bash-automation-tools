#!/bin/bash

# Interactive Backup Script

echo "📂 What's the source directory you want to back up?"
read -r SOURCE_DIR

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "❌ Source directory does not exist. Please check the path."
  exit 1
fi

echo "💾 Where do you want to save the backup?"
read -r BACKUP_DIR

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Generate timestamp
DATE=$(date +%F)

# Run backup
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"

# Confirm completion
echo "✅ Backup completed for $SOURCE_DIR."
echo "🗃️ Saved at: $BACKUP_DIR/backup_$DATE.tar.gz"

