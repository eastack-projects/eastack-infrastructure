#!/usr/bin/env bash

public_ip=$(ip -o -4 addr list enp0s8 | awk '{print $4}' | cut -d/ -f1)
sed -i "s/127.0.0.1/$public_ip/" /vagrant/.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory
