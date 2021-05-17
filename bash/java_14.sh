#! /bin/bash


if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi


sdk use java 14.ea.36-open

eval $0

