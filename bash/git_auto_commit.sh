#!/bin/bash 


git add .

files=$(git diff --name-status | awk '$1 == "M" {print "Updated: "$2} $1 == "A" {print "Created: "$2}')

message="Updated and created files:\n$files"

git commit -m "$message"


