#!/usr/bin/env bash


source ~/.bash_profile


if [ $# -ge 1 ];
then
   java_version=${1}
else 
   read -p "Enter Java Version: " java_version
fi


dist_array=("8:8.0.352-zulu" "11:11.0.18-amzn" "17:17.0.5-zulu" "19:19.0.2-oracle" "22:22.3.r19-grl")

for element in "${dist_array[@]}"; do
  key=${element%%:*}
  value=${element#*:}
  if [ $key == $java_version ]; then
    version=$value
  fi
done

if [ -z "$version" ]; then
  echo "Invalid Java Version"
  exit 1
fi

sdk use java $version


