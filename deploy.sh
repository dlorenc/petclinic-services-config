#!/bin/bash
set -e

gcloud container clusters get-credentials petclinic-us-central1 --zone us-central1-a

kubectl apply -k deploy-dev/
