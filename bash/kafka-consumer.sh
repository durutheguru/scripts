#! /bin/bash


read -p "Enter Topic Name: " topic_name
read -p "Enter Bootstrap Server(s): " bootstrap_servers

kafka-console-consumer.sh -bootstrap-server $bootstrap_servers --topic $topic_name --from-beginning
