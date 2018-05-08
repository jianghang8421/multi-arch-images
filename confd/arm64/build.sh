#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/../..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/kelseyhightower/confd}

cd ${CODE_PKG}

./build-${1}

cp ./bin/confd* $(dirname ${BASH_SOURCE})/bin