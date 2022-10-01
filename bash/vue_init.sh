#! /bin/bash

if [ $# -ge 1 ];
then 
  app_name=${1}
else 
  read -p "Enter Application Name: " app_name
fi



vue create $app_name
cd $app_name
vue add vuetify

