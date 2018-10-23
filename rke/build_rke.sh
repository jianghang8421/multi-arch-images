#!/bin/bash
set -e

mkdir -p $(dirname ${BASH_SOURCE})/bin
mkdir -p $(dirname ${BASH_SOURCE})/build

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/rke}

cd ${CODE_PKG}
make

cp ./bin/rke $(dirname ${BASH_SOURCE})/bin
cp -r ./build/bin $(dirname ${BASH_SOURCE})/build