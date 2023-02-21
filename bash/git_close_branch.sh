#! /bin/bash

branch=$(git rev-parse --abbrev-ref HEAD)


git checkout master
git pull origin master

git checkout main
git pull origin main

git branch -d $branch


