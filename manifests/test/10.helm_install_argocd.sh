#!/bin/bash

# install argo-cd
helm upgrade \
    --cleanup-on-fail \
    --install \
    argocd edgecraft/argo-cd \
    --create-namespace \
    --namespace argocd \
    -f ./values_argocd.yaml \
    --wait

# UI access
# https://192.168.88.181:32570
# Get admin password
# kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# Remove helm
#helm delete argocd -n argocd