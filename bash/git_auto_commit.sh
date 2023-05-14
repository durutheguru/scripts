#!/bin/bash 


git add .

git diff --name-status | awk '$1 == "M" {print "Updated: "$2} $1 == "A" {print "Created: "$2}' | git commit -aF -




