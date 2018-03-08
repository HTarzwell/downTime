#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/downtime_instances/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "downtime_instance": {
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'",
      "activity": "'"${ACTIVITY}"'"
    }
  }'

echo
