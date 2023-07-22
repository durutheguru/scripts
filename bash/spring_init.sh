#! /bin/bash


spring init --list

read -p "java version: " javaVersion
read -p "artifact: " artifact
read -p "group: " group
read -p "description: " description
read -p "dependencies: " dependencies

spring init -a="$artifact" -g="$group" --build=maven --description="$description" -j=$javaVersion -n="$artifact" -d="$dependencies" $artifact

