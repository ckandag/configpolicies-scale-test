for i in {0..299}
do
    echo "Deleting policy : policy-app${i}-rbac"
    oc delete -f App${i}-rbac-configpolicy.yaml 
done
