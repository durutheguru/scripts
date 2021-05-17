#! /bin/bash


read -p "Enter remote Git URL: " gitUrl

git init

git remote add origin $gitUrl

/usr/local/bin/git_commit_push.sh


