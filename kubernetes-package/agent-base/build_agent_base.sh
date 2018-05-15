#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/../..

CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/rancher/agent-base}

cd ${CODE_PKG}

docker build -t "rancher/agent-base:v0.3.0-arm64" -f Dockerfile-arm64 .
