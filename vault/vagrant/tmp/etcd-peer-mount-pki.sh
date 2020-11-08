#!/usr/bin/env bash

curl -X POST \
	--header "X-Vault-Token:$(cat init-result.json| jq -r .root_token)" \
	--data @mount-pki-request.json \
	https://Vault:8200/v1/sys/mounts/pki_int_etcd_peer
