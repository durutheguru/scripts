#! /bin/bash

read -p "Enter Topic Name: " topic_name

kafka-console-producer.sh --broker-list localhost:9092 --topic $topic_name
