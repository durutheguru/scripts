#! /bin/bash


read -p "java version: " javaVersion
read -p "artifact: " artifact
read -p "group: " group
read -p "dependencies: " dependencies

spring init -a=$artifact -g=$group --build=maven -j=$javaVersion -d=$dependencies $artifact