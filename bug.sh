#!/bin/bash

# This script attempts to process a file, but it has a race condition.
# The file is created and immediately read, potentially leading to empty content.

file="my_file.txt"
touch "$file"
echo "Some data" > "$file"
content=$(cat "$file")
echo "Content of $file: $content"