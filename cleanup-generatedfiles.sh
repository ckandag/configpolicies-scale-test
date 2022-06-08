#policies number 0 to 9 are not generated so this cleans up the rest
for i in {10..299}
do
    echo "Deleting : App${i}-rbac-configpolicy.yaml"
    rm App${i}-rbac-configpolicy.yaml 
done
