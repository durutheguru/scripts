#! /bin/bash

read -p "Enter Topic Name: " topic_name
read -p "Enter Broker URL: " broker_url

kafka-console-producer.sh --broker-list $broker_url --topic $topic_name
