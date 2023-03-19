#! /bin/bash

source ~/.bash_profile

functions=(
    "save_book"
    "save_publisher"
    "find_books"
    "find_publishers"
)


for function in "${functions[@]}"
do
  ./set_lambda_config.sh $function "us-east-1" "JASYPT_PWD=JDURU,ENV=PROD"
done

