#!/bin/bash

# install spark operator
helm upgrade \
    --cleanup-on-fail \
    --install \
    spark-operator edgecraft/spark-operator \
    --create-namespace \
    --namespace spark-operator \
    -f ./values_spark-operator.yaml \
    --wait