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
  current_file = ""
  base_current_file = ""
  content = ""
  file_count = 0
}
/^# / {
  # Extract the header name
  header = $0
  gsub(/^# /, "", header)  # Remove "# " prefix
  
  # Get base name by removing trailing numbers
  base_name = header
  gsub(/[0-9]+$/, "", base_name)
  
  # Check if this is a numbered continuation
  is_continuation = (current_file != "" && base_current_file != "" && base_name == base_current_file)
  
  if (is_continuation) {
    # This is a continuation - add to current content without saving separately
    content = content $0 "\n"
    next
  }
  
  # Save previous entry if exists (this is a new entry, not a continuation)
  if (current_file != "" && content != "") {
    # Clean filename for output with readable special character names
    clean_filename = current_file
    
    # Replace special characters with readable names
    gsub(/:/, "special_colon", clean_filename)
    gsub(/;/, "special_semicolon", clean_filename)
    gsub(/\?/, "special_question", clean_filename)
    gsub(/\*/, "special_asterisk", clean_filename)
    gsub(/</, "special_less", clean_filename)
    gsub(/>/, "special_greater", clean_filename)
    gsub(/\|/, "special_pipe", clean_filename)
    gsub(/"/, "special_quote", clean_filename)
    gsub(/\//, "special_slash", clean_filename)
    gsub(/\\/, "special_backslash", clean_filename)
    
    # Replace remaining problematic characters and whitespace
    gsub(/[[:space:]]/, "_", clean_filename)
    gsub(/_+/, "_", clean_filename)
    gsub(/^_|_$/, "", clean_filename)
    
    # Handle special case where filename becomes empty
    if (clean_filename == "") {
      clean_filename = "special_" file_count
    }
    
    output_file = output_dir "/" clean_filename ".md"
    print content > output_file
    close(output_file)
    file_count++
  }
  
  # Start new entry
  current_file = header
  base_current_file = base_name
  content = $0 "\n"
  next
}
/^#/ {
  # Handle case where we have multiple # headers for the same content (aliases)
  if (current_file != "") {
    # Extract the header name
    header = $0
    gsub(/^#+[[:space:]]*/, "", header)  # Remove any number of # and spaces
    
    # Get base name
    base_name = header
    gsub(/[0-9]+$/, "", base_name)
    
    # Check if this is a numbered continuation
    if (base_name == base_current_file) {
      content = content $0 "\n"
      next
    }
    
    # This is an alias - save the current content with this new name too
    clean_alias = header
    
    # Replace special characters with readable names
    gsub(/:/, "special_colon", clean_alias)
    gsub(/;/, "special_semicolon", clean_alias)
    gsub(/\?/, "special_question", clean_alias)
    gsub(/\*/, "special_asterisk", clean_alias)
    gsub(/</, "special_less", clean_alias)
    gsub(/>/, "special_greater", clean_alias)
    gsub(/\|/, "special_pipe", clean_alias)
    gsub(/"/, "special_quote", clean_alias)
    gsub(/\//, "special_slash", clean_alias)
    gsub(/\\/, "special_backslash", clean_alias)
    
    # Replace remaining problematic characters and whitespace
    gsub(/[[:space:]]/, "_", clean_alias)
    gsub(/_+/, "_", clean_alias)
    gsub(/^_|_$/, "", clean_alias)
    
    if (clean_alias == "") {
      clean_alias = "special_alias_" file_count
    }
    
    if (clean_alias != "" && clean_alias != current_file) {
      output_file = output_dir "/" clean_alias ".md"
      # For aliases, include all content so far plus this header
      print content $0 "\n" > output_file
      close(output_file)
      file_count++
    }
  }
  content = content $0 "\n"
  next
}
{
  # Add line to current entry content
  if (current_file != "") {
    content = content $0 "\n"
  }
}
END {
  # Save final entry
  if (current_file != "" && content != "") {
    clean_filename = current_file
    
    # Replace special characters with readable names
    gsub(/:/, "special_colon", clean_filename)
    gsub(/;/, "special_semicolon", clean_filename)
    gsub(/\?/, "special_question", clean_filename)
    gsub(/\*/, "special_asterisk", clean_filename)
    gsub(/</, "special_less", clean_filename)
    gsub(/>/, "special_greater", clean_filename)
    gsub(/\|/, "special_pipe", clean_filename)
    gsub(/"/, "special_quote", clean_filename)
    gsub(/\//, "special_slash", clean_filename)
    gsub(/\\/, "special_backslash", clean_filename)
    
    # Replace remaining problematic characters and whitespace
    gsub(/[[:space:]]/, "_", clean_filename)
    gsub(/_+/, "_", clean_filename)
    gsub(/^_|_$/, "", clean_filename)
    
    if (clean_filename == "") {
      clean_filename = "special_final_" file_count
    }
    
    output_file = output_dir "/" clean_filename ".md"
    print content > output_file
    close(output_file)
    file_count++
  }
  print "Extracted " file_count " " file_type " entries"
}' "$source_file"