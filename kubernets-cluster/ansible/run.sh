ansible-playbook -i inventory/hosts.ini playbook.yml --tags $1  --ask-become-pass
ansible-playbook -i inventory/hosts.ini playbook.yml --tags firewalld -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-common -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-master -v


# join command
# "kubeadm join 192.168.1.28:6443 --token 9av5ew.ic10oh0abtpjtdc2 --discovery-token-ca-cert-hash sha256:978050961c62c7ab65993c6e89fc09b524f3bcf0016c2bf0f6d695c6385a287a
