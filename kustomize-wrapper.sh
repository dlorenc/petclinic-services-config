#!/bin/bash
set -e

for environment in staging prod; do
    gsutil cp gs://protokit-secrets/$environment/mysql-secret.env $environment/
done

# Execute remaining command
"$@"

# Cleanup

for environment in staging prod; do
    rm $environment/mysql-secret.env
done