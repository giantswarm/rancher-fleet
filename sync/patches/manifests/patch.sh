#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly SCRIPT_DIR
source "${SCRIPT_DIR}"/../../_helpers.sh

cd "${REPO_DIR}"

for patch in $(ls "${SCRIPT_DIR_REL}"/*.patch); do
    set -x
    git apply "${patch}"
    { set +x; } 2>/dev/null
done
