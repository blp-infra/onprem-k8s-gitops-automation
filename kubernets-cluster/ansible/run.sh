ansible-playbook -i inventory/hosts.ini playbook.yml --tags $1  --ask-become-pass
ansible-playbook -i inventory/hosts.ini playbook.yml --tags firewalld -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-common -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-master -v
ansible-playbook -i inventory/hosts.ini playbook.yml --tags k8s-worker -v

# join command
# "kubeadm join 192.168.1.28:6443 --token 9av5ew.ic10oh0abtpjtdc2 --discovery-token-ca-cert-hash sha256:978050961c62c7ab65993c6e89fc09b524f3bcf0016c2bf0f6d695c6385a287a


# Grafana NodePort    : 32000
# Prometheus NodePort : 32002
# K8s Dashboard       : 32003
# Grafana Password    : Admin@2026  (change before production)
# SMTP Server         : smtp.yourdomain.com  (you change)
# SMTP Port           : 25           (you change)
# Alert From          : alerts@yourdomain.com
# Alert To            : team@yourdomain.com
# Metrics Retention   : 2d
# Logs Retention      : 2d

# "================================================"
#       - " MONITORING STACK ACCESS INFORMATION"
#       - "================================================"
#       - "Grafana     : http://192.168.1.28:32000"
#       - "             user: admin"
#       - "             pass: {{ grafana_admin_password }}"
#       - "Prometheus  : http://192.168.1.28:32002"
#       - "Alertmanager: http://192.168.1.28:32004"
#       - "K8s Dashboard: https://192.168.1.28:32003"
#       - "================================================"
#       - "Dashboard Token:"
#       - "{{ dashboard_token.stdout }}"
#       - "================================================"
