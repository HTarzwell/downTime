#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "doctor": {
      "given_name": "'"${GIVEN_NAME}"'"
      "family_name": "'"${FAMILY_NAME}"'"
      "specialty": "'"${SPECIALTY}"'"
    }
  }'

echo
