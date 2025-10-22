#!/bin/bash

# Final test of the corrected AWK logic
# Navigate to repository root since this script is now in .github/
cd "$(dirname "$0")/.."

mkdir -p test-final/source test-final/output

cat > test-final/source/test.md << 'EOF'
# ]
"]" is a special prefix which can be used before any command.

For example:
```
> say [add(1,1)]
You say, "2"
```

# ]2
Using ']' with $-commands:

```
> ]test My name is %n.
I got: My name is %n.
```

# @dolist
`@dolist <list>=<action>`

This command executes an action for each element in a list.

# @dolist2
Additional examples for @dolist:

```
> @dolist 1 2 3=say Number: ##
```

# @adescribe
# @odescribe
`@odescribe <object>[=<message>]`
`@adescribe <object>[=<action list>]`

These attributes contain messages shown when someone looks at an object.

# @amail
`@amail <object>=<action list>`

Sets actions for when an object receives @mail.

# }
The "}" prefix shows debug information.

# single_command
This is a standalone command.
EOF

echo "=== FINAL TEST OF AWK LOGIC ==="
echo "Test input:"
cat test-final/source/test.md
echo ""
echo "================================"

# Run the corrected AWK logic
awk '
BEGIN { 
  current_file = ""
  base_current_file = ""
  content = ""
  file_count = 0
  output_dir = "test-final/output"
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
    print "✓ Continuation: " header " added to " current_file
    next
  }
  
  # Save previous entry if exists (this is a new entry, not a continuation)
  if (current_file != "" && content != "") {
    # Clean filename for output, but preserve special chars like ]
    clean_filename = current_file
    # Only replace truly problematic characters, keep @, ], etc.
    gsub(/[<>:"/\\|?*\s]/, "_", clean_filename)
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
    print "✓ Created: " clean_filename ".md"
  }
  
  # Start new entry
  current_file = header
  base_current_file = base_name
  content = $0 "\n"
  print "→ Starting: " header " (base: " base_name ")"
  next
}
/^#/ {
  # Handle case where we have multiple # headers for the same content (aliases)
  if (current_file != "") {
    # Extract the header name
    header = $0
    gsub(/^#+\s*/, "", header)  # Remove any number of # and spaces
    
    # Get base name
    base_name = header
    gsub(/[0-9]+$/, "", base_name)
    
    # Check if this is a numbered continuation
    if (base_name == base_current_file) {
      content = content $0 "\n"
      print "✓ Numbered continuation: " header
      next
    }
    
    # This is an alias - save the current content with this new name too
    clean_alias = header
    gsub(/[<>:"/\\|?*\s]/, "_", clean_alias)
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
      print "✓ Created alias: " clean_alias ".md"
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
    gsub(/[<>:"/\\|?*\s]/, "_", clean_filename)
    gsub(/_+/, "_", clean_filename)
    gsub(/^_|_$/, "", clean_filename)
    
    if (clean_filename == "") {
      clean_filename = "special_final_" file_count
    }
    
    output_file = output_dir "/" clean_filename ".md"
    print content > output_file
    close(output_file)
    file_count++
    print "✓ Created final: " clean_filename ".md"
  }
  print ""
  print "📊 Total files created: " file_count
}' test-final/source/test.md

echo ""
echo "=== RESULTS ==="
echo "Files created:"
ls -1 test-final/output/

echo ""
echo "=== FILE CONTENTS ==="
for file in test-final/output/*.md; do
    if [ -f "$file" ]; then
        echo ""
        echo "📄 $(basename "$file"):"
        echo "---"
        cat "$file"
        echo "---"
    fi
done

# Cleanup
rm -rf test-final