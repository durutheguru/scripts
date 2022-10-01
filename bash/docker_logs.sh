#! /bin/bash

docker ps -a

read -p "Enter Container ID: " container_id

docker logs -f --tail=1000 $container_id

