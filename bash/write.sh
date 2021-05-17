#! /bin/bash


echo "Type Commit Message. Ctrl+D to save... "

txt=$(cat)


read -p "Enter file to write: " file

echo $txt >> $file

echo "contents successfully written to $file"

