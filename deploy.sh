#!/bin/bash
set -e

<<<<<<< HEAD
gcloud container clusters get-credentials petclinic-us-central1 --zone us-central1-a

kubectl apply -k deploy-prod/
=======
source deploy.env
gcloud container clusters get-credentials ${DEPLOY_CLUSTER} --zone ${DEPLOY_ZONE}
kubectl apply -k ${DEPLOY_DIR}
>>>>>>> master
