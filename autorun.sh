#cd vagrantfiles/vault
#vagrant destroy -f && vagrant up
#cd ../../playbooks
#ansible-playbook vault.yaml
#
#cd ../
#
#cd vagrantfiles/bind
#vagrant destroy -f && vagrant up
#cd ../../playbooks
#ansible-playbook bind.yaml
#
#cd ../

#cd vagrantfiles/etcd
#vagrant destroy -f && vagrant up
#cd ../../playbooks
#ansible-playbook etcd.yaml
#
#cd ../

#cd vagrantfiles/kubernetes/server
#vagrant destroy -f && vagrant up
#cd ../../../playbooks
#ansible-playbook k8s-server.yaml
#
#cd ../

cd vagrantfiles/kubernetes/node
vagrant destroy -f && vagrant up
cd ../../../playbooks
ansible-playbook k8s-node.yaml
