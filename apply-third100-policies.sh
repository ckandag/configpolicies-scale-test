#!/bin/bash
for i in {200..299}
do
    echo "Deploying : App${i}-rbac-configpolicy.yaml"
    oc apply -f App${i}-rbac-configpolicy.yaml 
done