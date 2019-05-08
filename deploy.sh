#!/bin/bash
set -e

echo "deploying"

source deploy.env
gcloud container clusters get-credentials ${DEPLOY_CLUSTER} --zone ${DEPLOY_ZONE}

# pipe the kustomized config to cli.js for platform transformations, then apply
kustomize build ${DEPLOY_DIR} | kubectl apply -f -
