#!/usr/bin/env bash
# Invoked by the platform's run-tests Task (catalog/tasks/run-tests.yaml) inside the
# resolved build-agent image (see cicd.yaml's build.agent) as part of the build stage.
# That step does NOT pre-install dependencies - this script owns npm ci itself.
set -euo pipefail
echo "TEMPORARY deliberate failure - Phase 3 item 8.1 live verification that a failing test blocks the image push. Revert this line after the test." >&2
exit 1
npm ci
npm test
