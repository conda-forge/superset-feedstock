#!/usr/bin/env bash

set -ex

export SUPERSET_HOME={{ PREFIX }}  # [unix]
superset db upgrade
export FLASK_APP='superset'
flask fab create-admin
  --username admin
  --firstname admin
  --lastname admin
  --email admin@fab.org
  --password admin
superset load_examples
superset init
