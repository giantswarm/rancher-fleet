#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly SCRIPT_DIR
source "${SCRIPT_DIR}"/../../_helpers.sh

echo "Updating Chart.yaml"

cd "${SCRIPT_DIR}"

# we need to set the appVersion field in Chart.yaml to match the
# version being synced from upstream.

# get the upstream sync version from vendir.yml
UPSTREAM_SYNC_VERSION=$(yq -r .directories[0].contents[0].git.ref ${REPO_DIR}/vendir.yml)
# strip leading 'v' if present
UPSTREAM_SYNC_VERSION_STRIPPED="${UPSTREAM_SYNC_VERSION#v}"

set -x
cp manifests/Chart.yaml "${CHART_DIR}"/Chart.yaml
cp manifests/README.md "${CHART_DIR}"/README.md
{ set +x; } 2>/dev/null

# set the app version in Chart.yaml
sed -i -E "s/APP_VERSION_PLACEHOLDER/${UPSTREAM_SYNC_VERSION_STRIPPED}/g" "${CHART_DIR}/Chart.yaml"
