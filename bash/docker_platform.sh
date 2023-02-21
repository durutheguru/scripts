#! /bin/bash

docker system info --format '{{.OSType}}/{{.Architecture}}'

