#! /bin/bash


if [ $# -lt 1 ];
then
    read -p "Enter Feature Name: " feature_name
else 
    feature_name=${1}
fi


git flow feature start $feature_name

git pull origin master

