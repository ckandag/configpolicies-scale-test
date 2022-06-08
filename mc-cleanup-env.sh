#delete usergroups and namespaces

oc delete -f usergroups.yaml

for i in {0..9}
do
   for j in a b c d e
   do
      ns=ns${i}${j}
      echo "Deleting Project ${ns}"
      oc delete project ${ns}
   done
done
