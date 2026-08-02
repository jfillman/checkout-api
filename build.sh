#!/usr/bin/env bash
# Invoked by the platform's build-image Task (catalog/tasks/build-image.yaml's
# run-build-script step) inside the resolved build-agent image, BEFORE kaniko packages
# the result via Dockerfile. Produces node_modules that Dockerfile then copies in as-is
# - Dockerfile does not run npm itself, see its own header.
set -euo pipefail
npm ci --omit=dev
