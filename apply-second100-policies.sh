#!/bin/bash
for i in {100..199}
do
    echo "Deploying : App${i}-rbac-configpolicy.yaml"
    oc apply -f App${i}-rbac-configpolicy.yaml 
done