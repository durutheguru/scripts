#! /bin/bash

docker run -it --rm -v `(pwd)`:/workspace jreleaser/jreleaser-alpine:latest init --format yml

