#! /bin/bash

if [ $# -ge 1 ];
then
   namespace=${1}
else 
   read -p "Enter Kube Namespace: " namespace
fi

kubectl get pods -n $namespace

read -p "Enter Pod name: " pod_name

if [ $# == 2 ];
then 
  tail=${2}
else 
  read -p "Enter tail: (-1 for none) " tail
fi

if [[ $tail == "-1" ]]
then
   kubectl logs -f $pod_name -n $namespace
else
   kubectl logs -f --tail=$tail $pod_name -n $namespace
fi



