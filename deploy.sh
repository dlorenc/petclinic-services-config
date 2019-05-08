#!/bin/bash
set -e

source deploy.env
gcloud container clusters get-credentials ${DEPLOY_CLUSTER} --zone ${DEPLOY_ZONE}

kustomize build --enable_alpha_goplugins_accept_panic_risk ${DEPLOY_DIR} | kubectl apply -f -
