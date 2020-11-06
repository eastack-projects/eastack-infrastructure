#!/usr/bin/env bash

curl -X POST --header "X-Vault-Token:$(cat init-result.json| jq -r .root_token)" --data @create-role-request.json https://Vault:8200/v1/pki/roles/ipool.me
