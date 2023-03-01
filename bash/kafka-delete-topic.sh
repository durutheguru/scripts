#! /bin/bash


read -p "Enter Bootstrap Servers (comma separated): " bootstrap_servers
read -p "Enter Topic Name: " topic_name


kafka-topics.sh --bootstrap-server $bootstrap_servers --delete --topic $topic_name

