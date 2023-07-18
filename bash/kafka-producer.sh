#! /bin/bash


if [ $# == 2 ];
then
    kafka-console-producer.sh --broker-list ${1} --topic ${2}
else
    read -p "Enter Topic Name: " topic_name
    read -p "Enter Broker URL: " broker_url

    kafka-console-producer.sh --broker-list $broker_url --topic $topic_name
fi




