#! /bin/bash


curl -H 'Accept: application/json' https://start.spring.io | python -m json.tool | grep "id"

read -p "java version: " javaVersion
read -p "artifact: " artifact
read -p "group: " group
read -p "dependencies: " dependencies

spring init -a=$artifact -g=$group --build=maven -j=$javaVersion -d=$dependencies $artifact

