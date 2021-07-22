#!/bin/bash
set -euxo pipefail

# destory all
cd vagrantfiles/pdns
vagrant destroy -f &
cd ../../

cd vagrantfiles/vault
vagrant destroy -f &
cd ../../

cd vagrantfiles/harbor
vagrant destroy -f &
cd ../../

cd vagrantfiles/kubernetes/control-plane
vagrant destroy -f &
cd ../../../

cd vagrantfiles/kubernetes/worker
vagrant destroy -f &
cd ../../../

cd vagrantfiles/etcd
vagrant destroy -f &
cd ../../

cd vagrantfiles/gitlab
vagrant destroy -f &
cd ../../
