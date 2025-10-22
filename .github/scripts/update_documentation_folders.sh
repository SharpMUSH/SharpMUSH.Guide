#!/bin/bash

# update_documentation_folders.sh - Updates documentation folders with new content
# Usage: update_documentation_folders.sh <processed_dir>

set -e

processed_dir="$1"

if [ $# -ne 1 ]; then
    echo "Usage: $0 <processed_dir>"
    exit 1
fi

if [ ! -d "$processed_dir" ]; then
    echo "Error: Processed directory $processed_dir not found"
    exit 1
fi

echo "Updating documentation folders..."

# Backup existing files by renaming them with .bak extension
echo "Backing up existing documentation..."

if [ -d "Function Documentation" ]; then
    find "Function Documentation" -name "*.md" -not -name "Function Guide.md" -exec mv {} {}.bak \; 2>/dev/null || true
fi

if [ -d "Command Documentation" ]; then
    find "Command Documentation" -name "*.md" -not -name "Command Guide.md" -exec mv {} {}.bak \; 2>/dev/null || true
fi

if [ -d "Configuration Documentation" ]; then
    find "Configuration Documentation" -name "*.md" -not -name "Config Guide.md" -exec mv {} {}.bak \; 2>/dev/null || true
fi

# Copy new files
echo "Copying new documentation..."

if [ -d "$processed_dir/functions" ] && [ "$(ls -A "$processed_dir/functions" 2>/dev/null)" ]; then
    cp "$processed_dir/functions"/* "Function Documentation/" 2>/dev/null || true
    echo "Updated Function Documentation with $(ls "$processed_dir/functions" | wc -l) files"
fi

if [ -d "$processed_dir/commands" ] && [ "$(ls -A "$processed_dir/commands" 2>/dev/null)" ]; then
    cp "$processed_dir/commands"/* "Command Documentation/" 2>/dev/null || true
    echo "Updated Command Documentation with $(ls "$processed_dir/commands" | wc -l) files"
fi

if [ -d "$processed_dir/configuration" ] && [ "$(ls -A "$processed_dir/configuration" 2>/dev/null)" ]; then
    cp "$processed_dir/configuration"/* "Configuration Documentation/" 2>/dev/null || true
    echo "Updated Configuration Documentation with $(ls "$processed_dir/configuration" | wc -l) files"
fi

# Remove backup files if copy was successful
echo "Cleaning up backup files..."
find . -name "*.bak" -delete 2>/dev/null || true

echo "Documentation folders updated successfully"