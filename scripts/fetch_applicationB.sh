#!/bin/bash
TOKEN="$1"
curl -X GET -H "X-CONFIG-TOKEN: $TOKEN" http://127.0.0.1:9090/applicationB/default/ | jq