#!/bin/bash

# update_documentation_folders.sh - Updates documentation folders with new content
# Usage: update_documentation_folders.sh <processed_dir>

set -euo pipefail

if [ $# -ne 1 ]; then
    echo "Usage: $0 <processed_dir>" >&2
    exit 1
fi

processed_dir="$1"

if [ ! -d "$processed_dir" ]; then
    echo "Error: Processed directory $processed_dir not found" >&2
    exit 1
fi

echo "Updating documentation folders..."

# <processed subdir>|<target folder>|<hand-written file to preserve>
categories=(
    "functions|Function Documentation|Function Guide.md"
    "commands|Command Documentation|Command Guide.md"
    "configuration|Configuration Documentation|Config Guide.md"
)

restore_backups() {
    local target="$1"
    find "$target" -name "*.md.bak" -print0 |
        while IFS= read -r -d '' backup; do
            mv -f "$backup" "${backup%.bak}"
        done
}

update_category() {
    local source="$processed_dir/$1" target="$2" keep="$3"

    # process_documentation.sh already fails on an empty extraction; treat an
    # empty staging directory here as a bug rather than "nothing to do", because
    # copying nothing after the backup sweep would delete the whole folder.
    if [ ! -d "$source" ] || [ -z "$(ls -A "$source" 2>/dev/null)" ]; then
        echo "Error: no processed files in $source - refusing to update '$target'" >&2
        exit 1
    fi

    mkdir -p "$target"

    # Move the existing generated files aside so entries dropped upstream do not
    # linger, while keeping the hand-written guide in place.
    find "$target" -maxdepth 1 -name "*.md" -not -name "$keep" -exec mv {} {}.bak \;

    if ! cp "$source"/*.md "$target/"; then
        echo "Error: failed to copy processed files into '$target' - restoring previous contents" >&2
        restore_backups "$target"
        exit 1
    fi

    find "$target" -maxdepth 1 -name "*.md.bak" -delete
    echo "Updated '$target' with $(find "$source" -maxdepth 1 -name '*.md' | wc -l) files"
}

for entry in "${categories[@]}"; do
    IFS='|' read -r subdir target keep <<< "$entry"
    update_category "$subdir" "$target" "$keep"
done

echo "Documentation folders updated successfully"
