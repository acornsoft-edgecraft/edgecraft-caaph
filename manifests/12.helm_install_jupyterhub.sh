#!/bin/bash

# install argo-cd
helm upgrade \
    --cleanup-on-fail \
    --install \
    jupyterhub edgecraft/jupyterhub \
    --create-namespace \
    --namespace jupyterhub \
    -f ./values_jupyterhub.yaml \
    --wait