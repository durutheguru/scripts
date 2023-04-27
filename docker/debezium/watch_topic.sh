#!/bin/bash

docker run -it --rm --name watcher --network debezium_docker-net \
    --link debezium_zookeeper_1:zookeeper --link debezium_kafka_1:kafka \
    quay.io/debezium/kafka:2.2 watch-topic -a -k dbserver1.lambda_crud.publisher

