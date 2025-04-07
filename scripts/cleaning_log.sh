#/bin/bash

echo "🧼 Cleaning up old messy log  files..."

# Delete compressed and rotated logs
find /var/log \( -name "*.[0-9]" -o -name "*.*.[0-9]" -o -name "*.gz" \) -exec rm -f {} \;

echo "✅ Log cleanup completed!"
