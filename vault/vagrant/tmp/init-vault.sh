#!/usr/bin/env bash

curl -X PUT --data @init-request.json https://Vault:8200/v1/sys/init | jq . > init-result.json
