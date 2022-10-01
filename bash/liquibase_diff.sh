#! /bin/bash


if [ $# == 1 ];
then
  diff_file=${1}
else
  read -p "Enter Diff xml: " diff_file
fi

mvn clean compile liquibase:diff -DdiffChangeLogFile=$diff_file -s settings.xml || mvn clean compile liquibase:diff -DdiffChangeLogFile=$diff_file


