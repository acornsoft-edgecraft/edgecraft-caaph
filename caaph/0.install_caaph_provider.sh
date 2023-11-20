#!/bin/bash

kubectl apply -f ./caaph-manager-crds.yaml
kubectl apply -f ./caaph-manager-deploy.yaml
kubectl apply -f ./addons.cluster.x-k8s.io_helmchartproxies.yaml
kubectl apply -f ./addons.cluster.x-k8s.io_helmreleaseproxies.yaml