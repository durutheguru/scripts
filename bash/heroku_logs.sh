#! /bin/bash


if [ $# -ge 1 ];
then 
  app_name=${1}
else 
  read -p "Enter Application Name: " app_name
fi


heroku logs --tail -a $app_name

