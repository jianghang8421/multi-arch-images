#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/hyperkube}

cd ${CODE_PKG}
docker build -f Dockerfile.arm64 -t rancher/hyperkube:v1.11.3-rancher1-arm64 .