#!/bin/bash

# install argo-cd
helm upgrade \
    --cleanup-on-fail \
    --install \
    gitlab edgecraft/gitlab-ce \
    --create-namespace \
    --namespace gitlab \
    -f ./values_gitlab_ce.yaml \
    --version 0.2.3 \
    --wait

# UI access
# https://gitlab.edgecraft.acornsoft.io
# Get root initial password
# kubectl get secret -n gitlab gitlab-gitlab-intial-root-password -o jsonpath="{.data.password}" | base64 -d; echo

# Remove helm
#helm delete gitlab -n gitlab