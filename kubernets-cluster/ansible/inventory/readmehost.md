[k8s_master]
rhel-master ansible_host=ip

[k8s_workers]
rhel-worker1 ansible_host=ip
rhel-worker2 ansible_host=ip

[k8s_all:children]
k8s_master
k8s_workers

[k8s_all:vars]
ansible_user=rootuser
ansible_password=rootuserpassword
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
