#! /bin/bash

branch=$(git rev-parse --abbrev-ref HEAD)

branch_type=$(echo ${branch/\/*})
branch=$(echo ${branch/*\/})

git flow $branch_type finish $branch

git pull origin master
git pull origin main

