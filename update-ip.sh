#!/usr/bin/env bash

sed -i -f sed-script ./*/vagrant/Vagrantfile coredns/ansible/roles/coredns/config/defaults/main.yml coredns/ansible/roles/coredns/setup/files/ipool.me.db
