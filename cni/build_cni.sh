#!/bin/bash
set -e

mkdir -p $(dirname ${BASH_SOURCE})/dist

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/cni}

cd ${CODE_PKG}
make

cp ./dist/artifacts/cni*.tar.gz $(dirname ${BASH_SOURCE})/dist