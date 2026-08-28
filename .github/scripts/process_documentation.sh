#!/bin/bash

# process_documentation.sh - Main documentation processing script
# Usage: process_documentation.sh <source_dir> <output_dir>

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_dir> <output_dir>" >&2
    exit 1
fi

source_dir="$1"
output_dir="$2"

if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory $source_dir not found" >&2
    exit 1
fi

echo "Processing documentation from: $source_dir"

# Create temporary processing directory
mkdir -p "$output_dir"/{functions,commands,configuration}

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# helpfile -> output subdirectory -> label. Sets ENTRY_COUNT on success.
process_helpfile() {
    local helpfile="$1" subdir="$2" label="$3"

    if [ ! -f "$source_dir/$helpfile" ]; then
        echo "Error: $helpfile not found in $source_dir." >&2
        echo "       Upstream SharpMUSH may have renamed or moved its helpfiles." >&2
        exit 1
    fi

    "$SCRIPT_DIR/split_documentation.sh" "$source_dir/$helpfile" "$output_dir/$subdir" "$label"

    ENTRY_COUNT=$(find "$output_dir/$subdir" -type f -name "*.md" | wc -l)

    # Splitting a non-empty helpfile into zero entries means the header format
    # changed underneath us. Committing that would silently wipe the docs, so
    # stop here instead.
    if [ "$ENTRY_COUNT" -eq 0 ]; then
        echo "Error: extracted 0 $label entries from $helpfile." >&2
        echo "       The helpfile exists but produced nothing - its '# header' format probably changed." >&2
        exit 1
    fi
}

process_helpfile sharpfunc.md functions function
FUNCTION_COUNT="$ENTRY_COUNT"

process_helpfile sharpcmd.md commands command
COMMAND_COUNT="$ENTRY_COUNT"

process_helpfile sharpconf.md configuration configuration
CONFIG_COUNT="$ENTRY_COUNT"

echo "Processed entries:"
echo "- Functions: $FUNCTION_COUNT"
echo "- Commands: $COMMAND_COUNT"
echo "- Configuration: $CONFIG_COUNT"

# Output results for GitHub Actions
if [ -n "${GITHUB_OUTPUT:-}" ]; then
    {
        echo "function_count=$FUNCTION_COUNT"
        echo "command_count=$COMMAND_COUNT"
        echo "config_count=$CONFIG_COUNT"
    } >> "$GITHUB_OUTPUT"
fi
