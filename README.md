# k8s

terraform apply -auto-approve
<IP to hosts.ini>
ansible-playbook -l terraform playbooks/play-role.yml -e "ROLE=10-install-terraform-1.1.9 facts=false"
ansible-playbook -l terraform playbooks/play-role.yml -e "ROLE=10-k8s-build-infrastructure facts=false"
ansible-playbook -l k8s_master playbooks/play-role.yml -e "ROLE=20-k8s-install-masters facts=true"
ansible-playbook -l k8s_master playbooks/play-role.yml -e "ROLE=90-install-docker facts=true"
ansible-playbook -l k8s_master playbooks/play-role.yml -e "ROLE=90-install-etcd facts=true"
ansible-playbook -l k8s_master playbooks/play-role.yml -e "ROLE=20-k8s-init-cluster facts=true"
<>
ansible-playbook -l terraform playbooks/play-role.yml -e "ROLE=10-k8s-destroy-infrastructure facts=false"
<>
terraform destroy -auto-approve
