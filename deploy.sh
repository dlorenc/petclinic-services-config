#!/bin/bash
set -e

echo "deploying"

source deploy.env
gcloud container clusters get-credentials ${DEPLOY_CLUSTER} --zone ${DEPLOY_ZONE}

# Set the plugin string for cli.js
export KUSTOMIZE_PLUGIN_CONFIG_STRING=$(cat ${SPRING_CLOUD_DIR})

# pipe the kustomized config to cli.js for platform transformations, then apply
kustomize build ${DEPLOY_DIR} | cli.js  | kubectl apply -f -
