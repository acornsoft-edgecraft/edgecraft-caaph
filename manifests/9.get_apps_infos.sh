#!/bin/bash

# get root user's pasword from gitlab
kubectl get secret -n gitlab gitlab-gitlab-intial-root-password -o jsonpath="{.data.password}" | base64 -d; echo

# get admin user's password from argo-cd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# get root user's password from gitlab
kubectl exec $(kubectl get pods -o jsonpath="{.items[0].metadata.name}" -n gitlab) -n gitlab -- cat /etc/gitlab/initial_root_password