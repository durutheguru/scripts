#!/bin/bash

read -p "Enter Namespace: " namespace

kubectl get pods -n $namespace

read -p "Please enter a comma-separated list of pod names:" input

# Save the original IFS value to restore later
oldIFS=$IFS

# Set the IFS to a comma to split the input by commas
IFS=','

# Split the input into an array
pod_names=($input)

# Restore the original IFS value
IFS=$oldIFS

# Iterate through the array and run 'kubectl describe pod' on each pod name
for pod_name in "${pod_names[@]}"; do
  echo "Describing pod: $pod_name"
  kubectl describe pod "$pod_name" -n $namespace | grep "Image: "
done
