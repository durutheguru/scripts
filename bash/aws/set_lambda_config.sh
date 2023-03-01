#! /bin/bash

if [ $# == 3 ];
then
    aws lambda update-function-configuration --function-name ${1} --region ${2} --environment "Variables={${3}}"
else  
    read -p "Enter Function Name: " function_name
    read -p "Enter Region: " region
    read -p "Enter Variables: " variables
    
    aws lambda update-function-configuration --function-name $function_name --region $region --environment "Variables={$variables}"
fi





