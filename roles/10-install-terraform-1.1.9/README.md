install terraform 1.1.9 with yandex provider
centos 7 проверен, debian возможен

ansible-playbook -l terraform playbooks/play-role.yml -e "ROLE=10-install-terraform-1.1.9"