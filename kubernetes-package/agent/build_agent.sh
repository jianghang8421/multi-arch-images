#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/../..

CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/rancher}

rm -rf $(dirname ${BASH_SOURCE})/build-src/*

mkdir -p $(dirname ${BASH_SOURCE})/build-src/ && cp -r ${CODE_PKG} $(dirname ${BASH_SOURCE})/build-src/ && cd $(dirname ${BASH_SOURCE})/build-src/rancher

git checkout add-rancher-agent-arm64

make build
sed -i "s/.bin/#.bin/g" .dockerignore
make package
