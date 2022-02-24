#! /bin/bash


if [ $# -ge 2 ];
then
    app_name=${1}
    scale=${2}
else
    read -p "Enter Application Name: " app_name
    read -p "Enter Scale Size: " scale
fi


heroku ps:scale web=$scale -a $app_name

