#! /bin/bash

echo "Enter Raw XML. Ctrl+D to exit... "

data=$(cat)
printf "\n\n"
echo "$data" | xmllint --format -

