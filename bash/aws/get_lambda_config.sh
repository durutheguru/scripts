#! /bin/bash

if [ $# == 2 ];
then
  aws lambda get-function-configuration --function-name ${1} --region ${2}
else
  read -p "Enter Function Name: " function_name
  read -p "Enter Region: " region
  aws lambda get-function-configuration --function-name $function_name --region $region
fi




