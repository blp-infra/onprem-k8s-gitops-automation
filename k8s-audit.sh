#!/bin/bash
###########################################################
# Author: MANU P ANAND
# K8s Audit Script - Captures all K8s related changes
# Run: bash k8s-audit.sh | tee server-audit.txt
###########################################################

HOSTNAME=$(hostname)
DATE=$(date)
OUTPUT_FILE="k8s-audit-${HOSTNAME}-$(date +%Y%m%d-%H%M%S).txt"

exec > >(tee -a "$OUTPUT_FILE") 2>&1

echo "=========================================="
echo " K8S AUDIT REPORT"
echo " Host     : $HOSTNAME"
echo " Date     : $DATE"
echo "=========================================="

echo ""
echo "### OS INFO ###"
cat /etc/os-release
uname -r

echo ""
echo "### SWAP STATUS ###"
swapon --show
cat /proc/swaps
grep -i swap /etc/fstab
systemctl status disableswap 2>/dev/null || echo "disableswap service: NOT FOUND"
ls /etc/systemd/system/disableswap.service 2>/dev/null || echo "disableswap.service file: NOT FOUND"

echo ""
echo "### ZRAM STATUS ###"
lsmod | grep zram || echo "zram: not loaded"
cat /etc/modprobe.d/blacklist-zram.conf 2>/dev/null || echo "zram blacklist: NOT FOUND"

echo ""
echo "### KERNEL MODULES ###"
lsmod | grep -E 'overlay|br_netfilter'
cat /etc/modules-load.d/k8s.conf 2>/dev/null || echo "k8s modules conf: NOT FOUND"

echo ""
echo "### SYSCTL K8S SETTINGS ###"
sysctl net.bridge.bridge-nf-call-iptables 2>/dev/null
sysctl net.bridge.bridge-nf-call-ip6tables 2>/dev/null
sysctl net.ipv4.ip_forward 2>/dev/null
cat /etc/sysctl.d/k8s*.conf 2>/dev/null || echo "k8s sysctl conf: NOT FOUND"

echo ""
echo "### CONTAINERD ###"
which containerd 2>/dev/null || echo "containerd: NOT INSTALLED"
containerd --version 2>/dev/null || echo "containerd version: N/A"
systemctl status containerd 2>/dev/null || echo "containerd service: NOT FOUND"
ls /etc/containerd/ 2>/dev/null || echo "containerd config dir: NOT FOUND"
ls /usr/local/bin/containerd* 2>/dev/null || echo "containerd binaries: NOT FOUND"
ls /usr/local/lib/systemd/system/containerd.service 2>/dev/null || echo "containerd.service: NOT FOUND"
ls /etc/systemd/system/containerd.service 2>/dev/null || echo "containerd.service (etc): NOT FOUND"

echo ""
echo "### RUNC ###"
which runc 2>/dev/null || echo "runc: NOT INSTALLED"
runc --version 2>/dev/null || echo "runc version: N/A"
ls /usr/local/sbin/runc 2>/dev/null || echo "runc binary: NOT FOUND"

echo ""
echo "### CRICTL ###"
which crictl 2>/dev/null || echo "crictl: NOT INSTALLED"
crictl --version 2>/dev/null || echo "crictl version: N/A"
cat /etc/crictl.yaml 2>/dev/null || echo "crictl.yaml: NOT FOUND"

echo ""
echo "### CNI PLUGINS ###"
ls /opt/cni/bin/ 2>/dev/null || echo "CNI plugins: NOT FOUND"

echo ""
echo "### KUBERNETES PACKAGES ###"
rpm -qa | grep -E 'kubeadm|kubelet|kubectl' 2>/dev/null || echo "K8s RPM packages: NOT FOUND"
dnf versionlock list 2>/dev/null | grep -E 'kube' || echo "versionlock: NOT FOUND"
cat /etc/yum.repos.d/kubernetes.repo 2>/dev/null || echo "kubernetes.repo: NOT FOUND"

echo ""
echo "### KUBERNETES SERVICES ###"
systemctl status kubelet 2>/dev/null || echo "kubelet: NOT FOUND"
systemctl status kube-apiserver 2>/dev/null || echo "kube-apiserver: NOT FOUND"

echo ""
echo "### KUBERNETES DIRS ###"
ls /etc/kubernetes/ 2>/dev/null || echo "/etc/kubernetes: NOT FOUND"
ls /etc/kubernetes/manifests/ 2>/dev/null || echo "manifests: NOT FOUND"
ls /var/lib/kubelet/ 2>/dev/null || echo "/var/lib/kubelet: NOT FOUND"
ls /var/lib/etcd/ 2>/dev/null || echo "/var/lib/etcd: NOT FOUND"

echo ""
echo "### KUBECONFIG ###"
ls /root/.kube/ 2>/dev/null || echo "/root/.kube: NOT FOUND"
ls /home/*/.kube/ 2>/dev/null || echo "user .kube: NOT FOUND"

echo ""
echo "### CLUSTER STATUS ###"
kubectl get nodes 2>/dev/null || echo "kubectl get nodes: FAILED (cluster may be down)"
kubectl get pods --all-namespaces 2>/dev/null || echo "kubectl get pods: FAILED"
crictl ps 2>/dev/null || echo "crictl ps: FAILED"

echo ""
echo "### FIREWALL ###"
systemctl status firewalld 2>/dev/null || echo "firewalld: NOT FOUND"
firewall-cmd --list-all 2>/dev/null || echo "firewall rules: NOT AVAILABLE"
systemctl status ufw 2>/dev/null || echo "ufw: NOT FOUND"

echo ""
echo "### IPTABLES ###"
iptables -L -n --line-numbers 2>/dev/null | head -50

echo ""
echo "### NETWORK INTERFACES ###"
ip a show
ip route show

echo ""
echo "### HOSTS FILE ###"
cat /etc/hosts

echo ""
echo "### BASHRC K8S ENTRIES ###"
grep -E 'KUBECONFIG|kubectl|k8s|kube' /root/.bashrc 2>/dev/null || echo "No k8s entries in root .bashrc"
grep -rE 'KUBECONFIG|kubectl|k8s|kube' /home/*/.bashrc 2>/dev/null || echo "No k8s entries in user .bashrc"

echo ""
echo "### SYSTEMD CUSTOM SERVICES ###"
ls /etc/systemd/system/*.service 2>/dev/null | xargs -I{} basename {}

echo ""
echo "### DISK USAGE K8S RELATED ###"
du -sh /var/lib/etcd 2>/dev/null || echo "etcd data: NOT FOUND"
du -sh /var/lib/kubelet 2>/dev/null || echo "kubelet data: NOT FOUND"
du -sh /var/lib/containerd 2>/dev/null || echo "containerd data: NOT FOUND"
du -sh /opt/cni 2>/dev/null || echo "cni data: NOT FOUND"
du -sh /opt/containerd 2>/dev/null || echo "containerd opt: NOT FOUND"

echo ""
echo "=========================================="
echo " AUDIT COMPLETE"
echo " Output saved to: $OUTPUT_FILE"
echo "=========================================="
