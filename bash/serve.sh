#!/bin/bash

. java_v.sh 19


if [ $# -ge 1 ];
then
   jwebserver -p ${1}
else 
   jwebserver 
fi
