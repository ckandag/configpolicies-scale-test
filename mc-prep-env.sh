
#!/bin/bash

#Create Namespaces and Usergroups on the managedclusters before deploying policies

for i in {0..9}
do
   for j in a b c d e
   do
      ns=ns${i}${j}
      echo "Creating Project ${ns}"
      oc new-project ${ns}
   done
done

echo "Creating Usergroups"
oc apply -f usergroups.yaml