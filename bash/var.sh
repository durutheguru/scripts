#! /bin/bash

if [ $# -ge 1 ];
then
   variable=${1}
else 
   read -p "Enter Variable Name: " variable
fi

if [ $# -ge 2 ];
then 
  value=${2}
else 
  read -p "Enter Value: " value
fi

echo "export $variable=$value" >> ~/.bash_profile
source ~/.bash_profile
bash -l
echo "set $variable = $value"


