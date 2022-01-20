#! /bin/bash


if [ $# -lt 1 ];
then
    read -p "Enter Patch Name: " patch_name
else 
    patch_name=${1}
fi


git flow hotfix start $patch_name

git pull origin master

git pull origin develop

