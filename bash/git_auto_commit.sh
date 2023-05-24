#!/bin/bash 



git diff --name-status | awk '$1 == "M" {print "Updated: "$2} $1 == "A" {print "Created: "$2}' > changes.txt
git add -A
git commit -F changes.txt
rm changes.txt


