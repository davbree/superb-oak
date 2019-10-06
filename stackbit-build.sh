#!/usr/bin/env bash

set -e
set -o pipefail
set -v

if [[ -z "${STACKBIT_API_KEY}" ]]; then
    echo "WARNING: No STACKBIT_API_KEY environment variable set, skipping stackbit-pull"
else
    npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://028eafff.ngrok.io/pull/5d9997b921ce7148b67ab0d0 
fi
hugo
./inject-netlify-identity-widget.js public
