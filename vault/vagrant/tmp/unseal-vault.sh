#!/usr/bin/env bash

export key=$(cat init-result.json | jq -r '.keys[0]')
cat unseal-request.json.temp | envsubst > unseal-request.json
cat unseal-request.json
curl -X PUT --data @unseal-request.json https://Vault:8200/v1/sys/unseal | jq .

export key=$(cat init-result.json | jq -r '.keys[1]')
cat unseal-request.json.temp | envsubst > unseal-request.json
cat unseal-request.json
curl -X PUT --data @unseal-request.json https://Vault:8200/v1/sys/unseal | jq .

export key=$(cat init-result.json | jq -r '.keys[2]')
cat unseal-request.json.temp | envsubst > unseal-request.json
cat unseal-request.json
curl -X PUT --data @unseal-request.json https://Vault:8200/v1/sys/unseal | jq .

export key=$(cat init-result.json | jq -r '.keys[3]')
cat unseal-request.json.temp | envsubst > unseal-request.json
cat unseal-request.json
curl -X PUT --data @unseal-request.json https://Vault:8200/v1/sys/unseal | jq .

export key=$(cat init-result.json | jq -r '.keys[4]')
cat unseal-request.json.temp | envsubst > unseal-request.json
cat unseal-request.json
curl -X PUT --data @unseal-request.json https://Vault:8200/v1/sys/unseal | jq .
