#!/bin/bash
set -e

mkdir -p $(dirname ${BASH_SOURCE})/bin
mkdir -p $(dirname ${BASH_SOURCE})/build

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/rancher/cli}

cd ${CODE_PKG}
if [ -n "$CROSS" ]; then
	CROSS=$CROSS make
else
	make
fi

cp ./bin/rancher $(dirname ${BASH_SOURCE})/bin
cp -r ./build/bin $(dirname ${BASH_SOURCE})/build
cp -r ./dist $(dirname ${BASH_SOURCE})