#!/bin/bash

# find ./stable -maxdepth 1 -type d | while read d; do 
#     echo $d
# done

for folder in $(find . -mindepth 1 -maxdepth 1 -type d \( -name "*" \) ); do
    helm package $folder 
done

# helm package ./stable/argo-cd
# helm package ./stable/csi-driver-nfs
# helm package ./stable/gitlab
# helm package ./stable/jupyterhub
# helm package ./stable/kubernetes-dashboard
# helm package ./stable/spark-operator
# helm package ./stable/velero