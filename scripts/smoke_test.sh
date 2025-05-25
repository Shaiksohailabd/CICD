#!/bin/bash
set -e
echo "Running smoke test..."
STATUS=$(curl -o /dev/null -s -w "%{http_code}" http://localhost)
if [ "$STATUS" -ne 200 ]; then
  echo "Smoke test failed! HTTP status: $STATUS"
  exit 1
else
  echo "Smoke test passed!"
fi
