#!/usr/bin/env bash

export key=$(sed -z 's/\n/\\n/g' ~/desktop/ipool/infrastructures/common/ansible/roles/common/config/files/tls.key)
export crt=$(sed -z 's/\n/\\n/g' ~/desktop/ipool/infrastructures/common/ansible/roles/common/config/files/tls.crt)
cat submit-ca-request.json.temp | envsubst > submit-ca-request.json
cat submit-ca-request.json
curl -X POST --header "X-Vault-Token:$(cat init-result.json| jq -r .root_token)" --data @submit-ca-request.json https://Vault:8200/v1/pki/config/ca
