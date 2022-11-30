#! /bin/bash

read -p "Enter Bootstrap Servers (comma separated): " bootstrap_servers
read -p "Enter Partitions: " partitions
read -p "Enter Replication Factor: " replication_factor
read -p "Enter Topic Name: " topic_name

kafka-topics.sh --create --topic $topic_name --bootstrap-server $bootstrap_servers --replication-factor $replication_factor --partitions $partitions

