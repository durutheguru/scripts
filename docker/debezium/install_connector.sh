
#! /bin/bash

curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d 

'{
  "name": "bookshop-connector",
  "config": {
    "connector.class": "io.debezium.connector.mysql.MySqlConnector",
    "tasks.max": "1",
    "database.hostname": "mysqldb",
    "database.port": "3306",
    "database.user": "root",
    "database.password": "1234567890",
    "database.allowPublicKeyRetrieval":"true",
    "database.server.id": "184054",
    "topic.prefix": "dbserver1",
    "database.include.list": "bookshop",
    "schema.history.internal.kafka.bootstrap.servers": 
    "kafka:9092","schema.history.internal.kafka.topic": "schema-changes.bookshop"
    }
}'

