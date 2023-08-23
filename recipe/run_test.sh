#!/usr/bin/env bash

set -ex

export FLASK_APP='superset'
export SUPERSET_SECRET_KEY=$(openssl rand -base64 42)
superset db upgrade
flask fab create-admin \
  --username admin \
  --firstname admin \
  --lastname admin \
  --email admin@fab.org \
  --password admin
# superset load_examples
superset init
