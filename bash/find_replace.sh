#! /bin/bash
# find_replace.sh

read -p "Enter file path: " file
read -p "Enter text to find: " search
read -p "Enter text to replace: " replace


sed -i '' "s/$search/$replace/g" $file
echo "Done!!!"

