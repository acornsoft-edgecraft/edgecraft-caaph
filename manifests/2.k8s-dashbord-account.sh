#!/bin/bash

# Kubernetes dashboard
helm upgrade \
    --cleanup-on-fail \
    --install \
    kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard \
    --create-namespace \
    --namespace kubernetes-dashboard \
    -f values_dashboard.yaml \
    --wait

# Create kubernetes dashbaord's admin-user and token
kubectl apply -f ./account_dashboard.yaml
kubectl -n kubernetes-dashboard create token admin-user --duration=720h