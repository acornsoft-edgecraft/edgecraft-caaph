#!/bin/bash

kubectl apply -f ./caaph-manager-crds.yaml
kubectl apply -f ./caaph-manager-deploy.yaml