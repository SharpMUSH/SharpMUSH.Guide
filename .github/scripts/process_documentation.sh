#!/bin/bash

# process_documentation.sh - Main documentation processing script
# Usage: process_documentation.sh <source_dir> <output_dir>

set -e

source_dir="$1"
output_dir="$2"

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_dir> <output_dir>"
    exit 1
fi

if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory $source_dir not found"
    exit 1
fi

echo "Processing documentation from: $source_dir"

# Create temporary processing directory
mkdir -p "$output_dir"/{functions,commands,configuration}

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Initialize counters
FUNCTION_COUNT=0
COMMAND_COUNT=0
CONFIG_COUNT=0

# Process each documentation file
if [ -f "$source_dir/pennfunc.md" ]; then
    "$SCRIPT_DIR/split_documentation.sh" "$source_dir/pennfunc.md" "$output_dir/functions" "function"
    FUNCTION_COUNT=$(find "$output_dir/functions" -type f -name "*.md" | wc -l)
else
    echo "Warning: pennfunc.md not found"
fi

if [ -f "$source_dir/penncmd.md" ]; then
    "$SCRIPT_DIR/split_documentation.sh" "$source_dir/penncmd.md" "$output_dir/commands" "command"
    COMMAND_COUNT=$(find "$output_dir/commands" -type f -name "*.md" | wc -l)
else
    echo "Warning: penncmd.md not found"
fi

if [ -f "$source_dir/pennconf.md" ]; then
    "$SCRIPT_DIR/split_documentation.sh" "$source_dir/pennconf.md" "$output_dir/configuration" "configuration"
    CONFIG_COUNT=$(find "$output_dir/configuration" -type f -name "*.md" | wc -l)
else
    echo "Warning: pennconf.md not found"
fi

echo "Processed entries:"
echo "- Functions: $FUNCTION_COUNT"
echo "- Commands: $COMMAND_COUNT"
echo "- Configuration: $CONFIG_COUNT"

# Output results for GitHub Actions
if [ -n "$GITHUB_OUTPUT" ]; then
    echo "function_count=$FUNCTION_COUNT" >> "$GITHUB_OUTPUT"
    echo "command_count=$COMMAND_COUNT" >> "$GITHUB_OUTPUT"
    echo "config_count=$CONFIG_COUNT" >> "$GITHUB_OUTPUT"
fi