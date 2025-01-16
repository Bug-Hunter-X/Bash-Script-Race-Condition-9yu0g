#!/bin/bash

# This script avoids the race condition by using a wait command to ensure
# the write operation is complete before reading the file.

file="my_file.txt"
touch "$file"
echo "Some data" > "$file"
# Wait for the write operation to finish
wait
content=$(cat "$file")
echo "Content of $file: $content"