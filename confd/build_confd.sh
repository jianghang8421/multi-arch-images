#!/bin/bash
set -e

ARCH=amd64

case "$(uname -m)" in
  x86_64*)
    ARCH=amd64
    ;;
  i?86_64*)
    ARCH=amd64
    ;;
  amd64*)
    ARCH=amd64
    ;;
  aarch64*)
    ARCH=arm64
    ;;
  arm64*)
    ARCH=arm64
    ;;
  *)
    echo "Unsupported host arch. Must be x86_64, arm64." >&2
    exit 1
    ;;
esac

mkdir -p $(dirname ${BASH_SOURCE})/${ARCH}/bin
SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..
CODE_PKG=${CODE_PKG:-${SCRIPT_ROOT}/vendor/github.com/kelseyhightower/confd}

if [ "${ARCH}" != "amd64" ]
    then
    $(dirname ${BASH_SOURCE})/${ARCH}/build.sh ${ARCH}
else 
    cd ${CODE_PKG}
    ./build
    cp ./bin/confd* $(dirname ${BASH_SOURCE})/${ARCH}/bin
fi