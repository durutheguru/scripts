#!/bin/bash

read -p "Enter Service name: " service_name
read -p "Enter Port-Mapping: " port_mapping
read -p "Enter Namespace: " namespace

kubectl port-forward svc/$service_name -n $namespace $port_mapping
