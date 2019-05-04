#!/bin/bash
set -e

source deploy.env
gcloud container clusters get-credentials ${DEPLOY_CLUSTER} --zone ${DEPLOY_ZONE}
kubectl apply -k ${DEPLOY_DIR}
