#!/bin/bash

##########################
### Gitlab
##########################

# get root user's pasword for gitlab from secret
kubectl get secret -n gitlab gitlab-gitlab-intial-root-password -o jsonpath="{.data.password}" | base64 -d; echo
# get root user's password for gitlab from inner file
kubectl exec $(kubectl get pods -o jsonpath="{.items[0].metadata.name}" -n gitlab) -n gitlab -- cat /etc/gitlab/initial_root_password

##########################
### Argo CD
##########################

# get admin user's password from argo-cd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

##########################
### Title
##########################