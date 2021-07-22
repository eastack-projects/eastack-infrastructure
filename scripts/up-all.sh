#!/bin/bash
set -euxo pipefail

# up all
cd vagrantfiles/pdns
vagrant up &
cd ../../

cd vagrantfiles/vault
vagrant up &
cd ../../

cd vagrantfiles/harbor
vagrant up &
cd ../../

cd vagrantfiles/kubernetes/control-plane
vagrant up &
cd ../../../

cd vagrantfiles/kubernetes/worker
vagrant up &
cd ../../../

cd vagrantfiles/gitlab
vagrant up &
cd ../../
