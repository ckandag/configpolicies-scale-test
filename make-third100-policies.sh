#!/bin/bash
for i in {0..9}
do
   for j in {0..9}
   do
      from=${i}
      to=2${j}${i}
      echo "Copy from: App${from}-rbac-configpolicy.yaml to: App${to}-rbac-configpolicy.yaml"
      sed  "s/policy-app${from}-/policy-app${to}-/g;s/App${from}/App${to}/g" App${from}-rbac-configpolicy.yaml  > App${to}-rbac-configpolicy.yaml
   done
done