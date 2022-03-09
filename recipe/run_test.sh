#!/usr/bin/env bash

set -ex

export FLASK_APP='superset'

superset db upgrade
flask fab create-admin \
  --username admin \
  --firstname admin \
  --lastname admin \
  --email admin@fab.org \
  --password admin
# superset load_examples
superset init
