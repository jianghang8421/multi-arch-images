#!/bin/bash
set -e

SCRIPT_ROOT=$(dirname ${BASH_SOURCE})

${SCRIPT_ROOT}/agent-base/build_agent_base.sh

${SCRIPT_ROOT}/kubernetes-package/build_kubernetes_package.sh

${SCRIPT_ROOT}/agent/build_agent.sh
