#!/bin/bash

# Validate that the input file exists and contains a list of directories
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' does not exist or is not a file."
    exit 1
fi

while IFS= read -r dir; do
    # Skip blank lines
    if [[ "$dir" =~ ^[[:space:]]*$ ]]; then
        continue
    fi

    # Validate that the directory is a git repository
    if [ ! -d "$dir/.git" ]; then
        echo "Error: Directory '$dir' is not a git repository."
        exit 1
    fi
done < "$input_file"


# Loop through all directories and check for changes to push
while IFS= read -r dir; do
    cd "$dir" || continue
    if [ "$(git status --porcelain)" ]; then
        # Commit and push changes
        git add .
        git commit -m "Code updates"
        git pull origin "$(git branch --show-current)"
        git push origin "$(git branch --show-current)"
    else
        echo "No changes to push in dir $dir"
    fi
    cd - >/dev/null || continue
done < "$input_file"



