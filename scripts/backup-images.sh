#!/usr/bin/env bash

k8s_version=v1.21.3

# push images
docker pull harbor.lan/kubernetes/kube-apiserver:$k8s_version
docker pull harbor.lan/kubernetes/kube-proxy:$k8s_version
docker pull harbor.lan/kubernetes/kube-controller-manager:$k8s_version
docker pull harbor.lan/kubernetes/kube-scheduler:$k8s_version
docker pull harbor.lan/kubernetes/pause:3.4.1
docker pull harbor.lan/kubernetes/etcd:3.4.13-0
docker pull harbor.lan/kubernetes/coredns/coredns:v1.8.0

calico_version=v3.19.1

# push images
docker pull harbor.lan/calico/cni:$calico_version
docker pull harbor.lan/calico/pod2daemon-flexvol:$calico_version
docker pull harbor.lan/calico/node:$calico_version
docker pull harbor.lan/calico/kube-controllers:$calico_version
