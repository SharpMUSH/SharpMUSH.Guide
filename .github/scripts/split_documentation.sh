#!/bin/bash

# split_documentation.sh - Splits documentation files by headers
# Usage: split_documentation.sh <source_file> <output_dir> <file_type>

set -e

source_file="$1"
output_dir="$2"
file_type="$3"

if [ $# -ne 3 ]; then
    echo "Usage: $0 <source_file> <output_dir> <file_type>"
    exit 1
fi

if [ ! -f "$source_file" ]; then
    echo "Warning: $source_file not found"
    exit 0
fi

echo "Processing $file_type documentation from: $(basename "$source_file")"

# Create output directory if it doesn't exist
mkdir -p "$output_dir"

# Use awk to split the file by # headers
awk -v output_dir="$output_dir" -v file_type="$file_type" '
BEGIN { 
  delete aliases
  alias_count = 0
  content = ""
  file_count = 0
  last_was_header = 0
}

# Function to clean filename
function clean_filename(name) {
  # Replace special characters with readable names
  gsub(/:/, "special_colon", name)
  gsub(/;/, "special_semicolon", name)
  gsub(/\?/, "special_question", name)
  gsub(/\*/, "special_asterisk", name)
  gsub(/</, "special_less", name)
  gsub(/>/, "special_greater", name)
  gsub(/\|/, "special_pipe", name)
  gsub(/"/, "special_quote", name)
  gsub(/\//, "special_slash", name)
  gsub(/\\/, "special_backslash", name)
  
  # Replace remaining problematic characters and whitespace
  gsub(/[[:space:]]/, "_", name)
  gsub(/_+/, "_", name)
  gsub(/^_|_$/, "", name)
  
  if (name == "") {
    name = "special_" file_count
  }
  
  return name
}

# Function to save all current aliases with the collected content
function save_aliases() {
  if (alias_count > 0 && content != "" && length(content) > 50) {
    # Save all aliases except numbered continuations
    for (i = 1; i <= alias_count; i++) {
      alias = aliases[i]
      base_name = alias
      gsub(/[0-9]+$/, "", base_name)
      
      # Only save if this alias matches its base name (not a numbered continuation)
      if (alias == base_name) {
        clean_name = clean_filename(alias)
        output_file = output_dir "/" clean_name ".md"
        print content > output_file
        close(output_file)
        file_count++
      }
    }
  }
}

/^# / {
  # Extract the header name
  header = $0
  gsub(/^# /, "", header)
  
  # Check if this is a numbered continuation of existing aliases
  base_name = header
  gsub(/[0-9]+$/, "", base_name)
  
  is_continuation = 0
  for (i = 1; i <= alias_count; i++) {
    alias_base = aliases[i]
    gsub(/[0-9]+$/, "", alias_base)
    if (base_name == alias_base) {
      is_continuation = 1
      break
    }
  }
  
  if (is_continuation) {
    # This is a numbered continuation - add to content
    content = content $0 "\n"
    last_was_header = 1
  } else if (last_was_header && alias_count > 0) {
    # Previous line was also a header, so this is another alias for the same content
    alias_count++
    aliases[alias_count] = header
    content = content $0 "\n"
    last_was_header = 1
  } else {
    # Check if we need to save previous aliases
    if (alias_count > 0) {
      save_aliases()
    }
    
    # Start new alias group
    delete aliases
    alias_count = 1
    aliases[1] = header
    content = $0 "\n"
    last_was_header = 1
  }
  next
}

/^#\b/ {
  # Additional alias header (should be rare, but handle it)
  if (alias_count > 0) {
    header = $0
    gsub(/^#[[:space:]]*/, "", header)
    
    alias_count++
    aliases[alias_count] = header
    content = content $0 "\n"
    last_was_header = 1
  } else {
    content = content $0 "\n"
    last_was_header = 0
  }
  next
}

{
  # Regular content line
  if (alias_count > 0) {
    content = content $0 "\n"
  }
  last_was_header = 0
}

END {
  # Save final aliases
  save_aliases()
  print "Extracted " file_count " " file_type " entries"
}' "$source_file"