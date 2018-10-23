#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/loglevel}

cd ${CODE_PKG}
make