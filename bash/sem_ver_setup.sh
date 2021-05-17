#! /bin/bash
# script handles setup for Git Flow Semantic Versioning

git fetch origin master
git fetch origin develop

git flow init

gitversion init

git push -u origin master
git push -u origin develop
