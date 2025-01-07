#!/bin/bash

# Improved script to handle empty and whitespace-only files gracefully.
for file in "/path/to/files/*"; do
  # Check if the file exists
  if [ ! -f "$file" ]; then
    echo "Skipping: $file does not exist." >&2
    continue
  fi
  # Count lines using wc -l, ignoring empty or whitespace-only files
  if (( $(wc -l < "$file") > 0 )); then
    # Process only non-empty files
    echo "Processing: $file"
    # ...your file processing commands here...
  else
    echo "Skipping: $file is empty or contains only whitespace." >&2
  fi
done