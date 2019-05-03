#!/bin/bash
set -e

gcloud container clusters get-credentials petclinic-us-east1 --zone us-east1-d

kubectl apply -k deploy-dev/
