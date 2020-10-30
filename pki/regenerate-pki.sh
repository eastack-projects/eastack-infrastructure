#!/usr/bin/env bash

cfssl gencert -initca ca/csr.json | cfssljson -bare ca/ca
cfssl gencert -ca=ca/ca.pem -ca-key=ca/ca-key.pem -config=ca/ca-config.json -profile=kubernetes kubernetes/kubectl/csr.json | cfssljson -bare kubernetes/kubectl/kubectl
cfssl gencert -ca=ca/ca.pem -ca-key=ca/ca-key.pem -config=ca/ca-config.json -profile=kubernetes kubernetes/apiserver/csr.json | cfssljson -bare kubernetes/apiserver/apiserver
cfssl gencert -ca=ca/ca.pem -ca-key=ca/ca-key.pem -config=ca/ca-config.json -profile=kubernetes kubernetes/apiserver/apiserver-kubelet-csr.json | cfssljson -bare kubernetes/apiserver/apiserver-kubelet
