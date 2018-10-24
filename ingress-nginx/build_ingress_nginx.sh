#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/ingress-nginx}

cd ${CODE_PKG}
#CROSS=1 make