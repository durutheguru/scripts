#! /bin/bash

if [ $# == 1 ];
then
  kubectl -n ${1} rollout restart deploy
  kubectl get pods -n ${1} -w
else
  read -p "Enter Pod namespace: " namespace
  kubectl -n $namespace rollout restart deploy
  kubectl get pods -n $namespace -w
fi





