#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) ; readonly SCRIPT_DIR
source "${SCRIPT_DIR}"/../../_helpers.sh

cd "${REPO_DIR}"

# get the upstream sync version from vendir.yml
UPSTREAM_SYNC_VERSION=$(yq -r .directories[0].contents[0].git.ref ${REPO_DIR}/vendir.yml)

set -x
cp "${SCRIPT_DIR_REL}"/manifests/schema.yaml "${CHART_DIR}"/.schema.yaml
cp "${SCRIPT_DIR_REL}"/manifests/zz_generated.app-platform.values.yaml "${CHART_DIR}"/

# generate the values schema
helm schema --config helm/rancher-fleet/.schema.yaml -o "${CHART_DIR}"/values.schema.json

# mutate the generated values schema, changes `additionalProperties: false` > `unevaluatedProperties: false`.
python3 -c 'import json,sys; h=lambda o: {**{k:v for k,v in o.items() if k!="additionalProperties"},"unevaluatedProperties":False} if ("$ref" in o and o.get("additionalProperties") is False) else o; p=sys.argv[1]; f=open(p,encoding="utf-8"); d=json.load(f,object_hook=h); f.close(); f=open(p,"w",encoding="utf-8"); json.dump(d,f); f.close()' "${CHART_DIR}"/values.schema.json

# normalize the generated schema
schemalint normalize "${CHART_DIR}"/values.schema.json -o "${CHART_DIR}"/values.schema.json --force

git apply "${SCRIPT_DIR_REL}/_values.yaml.patch"
{ set +x; } 2>/dev/null

sed -i -E "s/APP_VERSION_PLACEHOLDER/${UPSTREAM_SYNC_VERSION}/g" "${CHART_DIR}/values.yaml"
