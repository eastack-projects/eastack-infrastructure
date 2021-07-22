#!/usr/bin/env bash

k8s_version=v1.21.3

# pull images
docker pull registry.aliyuncs.com/google_containers/kube-apiserver:$k8s_version
docker pull registry.aliyuncs.com/google_containers/kube-proxy:$k8s_version
docker pull registry.aliyuncs.com/google_containers/kube-controller-manager:$k8s_version
docker pull registry.aliyuncs.com/google_containers/kube-scheduler:$k8s_version
docker pull registry.aliyuncs.com/google_containers/pause:3.4.1
docker pull registry.aliyuncs.com/google_containers/etcd:3.4.13-0
docker pull coredns/coredns:1.8.0

# retag images
docker tag registry.aliyuncs.com/google_containers/kube-apiserver:$k8s_version harbor.lan/kubernetes/kube-apiserver:$k8s_version
docker tag registry.aliyuncs.com/google_containers/kube-proxy:$k8s_version harbor.lan/kubernetes/kube-proxy:$k8s_version
docker tag registry.aliyuncs.com/google_containers/kube-controller-manager:$k8s_version harbor.lan/kubernetes/kube-controller-manager:$k8s_version
docker tag registry.aliyuncs.com/google_containers/kube-scheduler:$k8s_version harbor.lan/kubernetes/kube-scheduler:$k8s_version
docker tag registry.aliyuncs.com/google_containers/pause:3.4.1 harbor.lan/kubernetes/pause:3.4.1
docker tag registry.aliyuncs.com/google_containers/etcd:3.4.13-0 harbor.lan/kubernetes/etcd:3.4.13-0
docker tag coredns/coredns:1.8.0 harbor.lan/kubernetes/coredns/coredns:v1.8.0

# push images
docker push harbor.lan/kubernetes/kube-apiserver:$k8s_version
docker push harbor.lan/kubernetes/kube-proxy:$k8s_version
docker push harbor.lan/kubernetes/kube-controller-manager:$k8s_version
docker push harbor.lan/kubernetes/kube-scheduler:$k8s_version
docker push harbor.lan/kubernetes/pause:3.4.1
docker push harbor.lan/kubernetes/etcd:3.4.13-0
docker push harbor.lan/kubernetes/coredns/coredns:v1.8.0

calico_version=v3.19.1

# pull images
docker pull docker.io/calico/cni:$calico_version
docker pull docker.io/calico/pod2daemon-flexvol:$calico_version
docker pull docker.io/calico/node:$calico_version
docker pull docker.io/calico/kube-controllers:$calico_version

# retag images
docker tag docker.io/calico/cni:$calico_version harbor.lan/calico/cni:$calico_version 
docker tag docker.io/calico/pod2daemon-flexvol:$calico_version harbor.lan/calico/pod2daemon-flexvol:$calico_version 
docker tag docker.io/calico/node:$calico_version harbor.lan/calico/node:$calico_version 
docker tag docker.io/calico/kube-controllers:$calico_version harbor.lan/calico/kube-controllers:$calico_version 

# push images
docker push harbor.lan/calico/cni:$calico_version
docker push harbor.lan/calico/pod2daemon-flexvol:$calico_version
docker push harbor.lan/calico/node:$calico_version
docker push harbor.lan/calico/kube-controllers:$calico_version
  

