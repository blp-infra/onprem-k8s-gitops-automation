ansible-playbook -i inventory/hosts.ini playbook.yml --tags $1  --ask-become-pass
ansible-playbook -i inventory/hosts.ini playbook.yml --tags firewalld -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-common -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-master -v
