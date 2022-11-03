#! /bin/bash

kubectl port-forward -n monnify svc/phpmyadmin 8090:80

