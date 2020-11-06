#!/usr/bin/env bash

sudo trust anchor --store ~/desktop/ipool/infrastructures/vault/ansible/roles/common/config/files/tls.crt
curl -X PUT --data @init-request.json https://Vault:8200/v1/sys/init | jq . > init-result.json
