#!/bin/bash

echo "build web frontend"

if [ $1 == "QUAY" ]; then
   oc create -f $HERE/tekton-pipeline-run/catalog-run-quay.yaml
else
   oc create -f $HERE/tekton-pipeline-run/catalog-run-auto.yaml
fi
