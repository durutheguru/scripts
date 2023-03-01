#! /bin/bash

source ~/.bash_profile

functions=(
    "save-book"
    "save-publisher"
    "find-books"
    "find-publishers"
)


for function in "${functions[@]}"
do
  ./set_lambda_config.sh $function "us-east-1" "JASYPT_PWD=JDURU,ENV=PROD"
done

