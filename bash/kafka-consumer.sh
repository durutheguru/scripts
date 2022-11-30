#! /bin/bash


read -p "Enter Topic Name: " topic_name

kafka-console-consumer.sh -bootstrap-server localhost:9092 --topic $topic_name --from-beginning
