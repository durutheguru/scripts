#! /bin/bash

REQUIRED_ARG_LENGTH=1
bash_profile_path=~/.bash_profile
bash_profile_content=`cat $bash_profile_path`

if [ $# -lt $REQUIRED_ARG_LENGTH  ];
then
  echo "Usage `basename $0`: <file_name.ext>" >&2
  exit 1
fi


file=$1

chmod +rwx $file

cp $file /usr/local/bin

file_name=${file%%.*}

if grep -q "$file" "$bash_profile_path"; then
  echo "Updated Installation..."
else
  echo "alias $file_name='bash /usr/local/bin/$file'" >> ~/.bash_profile
  echo "Installation successful..."
fi

if [[ $# == 1 || $2 == "-r" ]]
then
  bash -l
fi


