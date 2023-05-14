#!/bin/bash 


git add .

files=$(git diff --name-status | awk '$1 == "M" {print "Updated: "$2} $1 == "A" {print "Created: "$2}')

if [ -z "$files" ]; then
    message="..."
else
    message="Updated and created files:\n$files"
fi


git commit -m "$message"

