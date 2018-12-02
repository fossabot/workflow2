#!/usr/bin/env bash

set -euo pipefail

docker pull centos:centos7

# Workflow UI container
pushd workflow_ui
docker build -t workflow2_ui:latest -f Dockerfile .
docker tag workflow2_ui gcr.io/liveramp-eng/workflow2_ui
docker push gcr.io/liveramp-eng/workflow2_ui
popd

# Workflow monitor container
pushd workflow_monitor
docker build -t workflow2_monitor:latest -f Dockerfile .
docker tag workflow2_monitor gcr.io/liveramp-eng/workflow2_monitor
docker push gcr.io/liveramp-eng/workflow2_monitor
popd
