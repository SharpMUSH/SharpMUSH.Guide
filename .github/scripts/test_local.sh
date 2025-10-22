#!/bin/bash

# test_local.sh - Local testing script for documentation processing
# This script simulates the full workflow locally for testing

set -e

echo "=== LOCAL DOCUMENTATION PROCESSING TEST ==="

# Clean up any previous test runs
rm -rf temp-sharpmush temp-processed test-local-output

# Clone the SharpMUSH repository
echo "1. Cloning SharpMUSH repository..."
git clone https://github.com/SharpMUSH/SharpMUSH.git temp-sharpmush

# Check if documentation exists
SOURCE_DIR="temp-sharpmush/SharpMUSH.Documentation/Helpfiles/SharpMUSH"
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Documentation folder not found at: $SOURCE_DIR"
    exit 1
fi

echo "✅ Documentation folder found"

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Process documentation
echo "2. Processing documentation..."
"$SCRIPT_DIR/process_documentation.sh" "$SOURCE_DIR" "temp-processed"

# Create test output directories
mkdir -p test-local-output/{functions,commands,configuration}

# Copy processed files to test output
echo "3. Copying processed files..."
if [ -d "temp-processed/functions" ]; then
    cp temp-processed/functions/* test-local-output/functions/ 2>/dev/null || true
fi
if [ -d "temp-processed/commands" ]; then
    cp temp-processed/commands/* test-local-output/commands/ 2>/dev/null || true
fi
if [ -d "temp-processed/configuration" ]; then
    cp temp-processed/configuration/* test-local-output/configuration/ 2>/dev/null || true
fi

# Show results
echo ""
echo "=== RESULTS ==="
echo "Functions: $(ls test-local-output/functions 2>/dev/null | wc -l) files"
echo "Commands: $(ls test-local-output/commands 2>/dev/null | wc -l) files"
echo "Configuration: $(ls test-local-output/configuration 2>/dev/null | wc -l) files"

echo ""
echo "Sample files created:"
echo "Functions:"
ls test-local-output/functions 2>/dev/null | head -5 || echo "  (none)"

echo "Commands:"
ls test-local-output/commands 2>/dev/null | head -5 || echo "  (none)"

echo "Configuration:"
ls test-local-output/configuration 2>/dev/null | head -5 || echo "  (none)"

# Show a sample file content
echo ""
echo "=== SAMPLE CONTENT ==="
SAMPLE_FILE=$(find test-local-output -name "*.md" | head -1)
if [ -n "$SAMPLE_FILE" ]; then
    echo "Content of $(basename "$SAMPLE_FILE"):"
    echo "---"
    head -20 "$SAMPLE_FILE"
    echo "---"
else
    echo "No sample files found"
fi

# Test specifically for @dolist to verify the bug fix
echo ""
echo "=== BUG FIX VERIFICATION ==="
if [ -f "test-local-output/commands/@dolist.md" ]; then
    echo "✅ @dolist.md found (should contain both @dolist and @dolist2)"
    echo "File size: $(wc -l < test-local-output/commands/@dolist.md) lines"
    if grep -q "# @dolist2" test-local-output/commands/@dolist.md; then
        echo "✅ @dolist2 content found in @dolist.md (numbered continuation working)"
    else
        echo "❌ @dolist2 content NOT found in @dolist.md"
    fi
else
    echo "❌ @dolist.md not found - check for incorrect filename like @doli_t.md"
    ls test-local-output/commands/*dolist* 2>/dev/null || echo "  No dolist files found"
fi

# Clean up
echo ""
echo "4. Cleaning up..."
rm -rf temp-sharpmush temp-processed

echo ""
echo "✅ Local test completed! Check test-local-output/ for results."
echo "   Run 'rm -rf test-local-output' to clean up."