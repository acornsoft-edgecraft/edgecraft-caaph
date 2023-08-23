#!/bin/bash

helm upgrade \
    --cleanup-on-fail \
    --install \
    argocd argo-cd/argo-cd \
    --create-namespace \
    --namespace argocd \
    -f values_argocd.yaml \
    --wait