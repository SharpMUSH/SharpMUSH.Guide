#!/bin/bash

# process_documentation.sh - Main documentation processing script
# Usage: process_documentation.sh <help export> <output_dir>
#
# <help export> is a checkout of SharpMUSH's help-export branch: help/*.md, the general
# help as the game serves it (plugin help and its listings included), and articles.json,
# the manifest of every article in it.

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: $0 <help export> <output_dir>" >&2
    exit 1
fi

source_dir="$1/help"
manifest="$1/articles.json"
output_dir="$2"

if [ ! -d "$source_dir" ] || [ ! -f "$manifest" ]; then
    echo "Error: $1 is not a help export (no help/ or articles.json)" >&2
    exit 1
fi

echo "Processing documentation from: $source_dir"

# Create temporary processing directory
mkdir -p "$output_dir"/{functions,commands,configuration}

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# The page name split_documentation.sh gives a topic.
page_name() {
    sed -e 's/:/special_colon/g' -e 's/;/special_semicolon/g' -e 's/?/special_question/g' \
        -e 's/\*/special_asterisk/g' -e 's/</special_less/g' -e 's/>/special_greater/g' \
        -e 's/|/special_pipe/g' -e 's/"/special_quote/g' -e 's#/#special_slash#g' \
        -e 's/\\/special_backslash/g' -e 's/[[:space:]]/_/g' -e 's/__*/_/g' -e 's/^_//' -e 's/_$//'
}

# subdirectory, label, aggregate helpfile, pattern for the topics split out of it into
# files of their own ('' for none). Sets ENTRY_COUNT on success.
#
# The help export keeps a command's or function's topic in sharpcmd.md/sharpfunc.md or in
# a file of its own named <name>-command.md / <name>-function.md (a plugin's included), so
# both are read. Every article the export's manifest lists for those files must come out as
# a page; a topic the split drops fails the sync instead of vanishing from the Guide.
process_category() {
    local subdir="$1" label="$2" aggregate="$3" pattern="$4"

    if [ ! -f "$source_dir/$aggregate" ]; then
        echo "Error: $aggregate not found in $source_dir." >&2
        echo "       Upstream SharpMUSH may have renamed or moved its helpfiles." >&2
        exit 1
    fi

    local files=("$source_dir/$aggregate")
    if [ -n "$pattern" ]; then
        while IFS= read -r file; do files+=("$file"); done \
            < <(find "$source_dir" -maxdepth 1 -type f -name "$pattern" | LC_ALL=C sort)
    fi
    for file in "${files[@]}"; do
        "$SCRIPT_DIR/split_documentation.sh" "$file" "$output_dir/$subdir" "$label" > /dev/null
    done

    ENTRY_COUNT=$(find "$output_dir/$subdir" -type f -name "*.md" | wc -l)

    # Splitting non-empty helpfiles into zero entries means the header format
    # changed underneath us. Committing that would silently wipe the docs, so
    # stop here instead.
    if [ "$ENTRY_COUNT" -eq 0 ]; then
        echo "Error: extracted 0 $label entries from ${#files[@]} helpfiles." >&2
        echo "       The helpfiles exist but produced nothing - their '# header' format probably changed." >&2
        exit 1
    fi

    local names missing=0
    names=$(printf '%s\n' "${files[@]##*/}" | jq -R . | jq -s .)
    while IFS=$'\t' read -r file title; do
        if [ ! -f "$output_dir/$subdir/$(printf '%s' "$title" | page_name).md" ]; then
            echo "::error::$file: '$title' is in the help export but produced no $label page." >&2
            missing=1
        fi
    done < <(jq -r --argjson names "$names" \
        '.[] | select(.file as $f | $names | index($f)) | [.file, .title] | @tsv' "$manifest")
    if [ "$missing" -ne 0 ]; then
        exit 1
    fi
}

process_category functions function sharpfunc.md '*-function.md'
FUNCTION_COUNT="$ENTRY_COUNT"

process_category commands command sharpcmd.md '*-command.md'
COMMAND_COUNT="$ENTRY_COUNT"

process_category configuration configuration sharpconf.md ''
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
