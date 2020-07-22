#! /bin/bash

read -p "Enter Kube Namespace: " namespace

kubectl get pods -n $namespace


read -p "Enter Pod name: " pod_name
read -p "Enter tail: (-1 for none) " tail
read -p "Enter search: " search

if [[ tail == "-1" ]]
then
   kubectl logs -f $pod_name -n $namespace | grep $search
else
   kubectl logs -f --tail=$tail $pod_name -n $namespace | grep $search
fi


