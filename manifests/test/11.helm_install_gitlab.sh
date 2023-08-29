#!/bin/bash

# install gitlab
helm upgrade \
    --cleanup-on-fail \
    --install \
    gitlab edgecraft/gitlab \
    --create-namespace \
    --namespace gitlab \
    -f ./values_gitlab.yaml \
    --wait

# helm upgrade --install gitlab gitlab/gitlab \                                                                                           ✔  38s 
# --namespace gitlab \
# --create-namespace \
# --timeout 600s \
# --set gloabl.edition=ce \
# --set gitlab-runner.install=false \
# --set gitlab.hosts.domain=edgecraft.acornsoft.io \
# --set certmanager-issuer.email=ccambo@acornsoft.io \
# --set certmanager.install=false

# UI access
# https://gitlab.edgecraft.acornsoft.io
# Get root initial password
# kubectl get secret -n gitlab gitlab-gitlab-intial-root-password -o jsonpath="{.data.password}" | base64 -d; echo

# Remove helm
#helm delete gitlab -n gitlab