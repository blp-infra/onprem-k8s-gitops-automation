# Kubernetes Ports and Protocols

When running Kubernetes in environments with strict network boundaries (such as on-premises datacenters with physical firewalls or cloud VPC networks), it is important to allow the required ports used by Kubernetes components.

---

## Control Plane

| Protocol | Direction | Port Range | Purpose | Used By |
|---------|-----------|------------|---------|---------|
| TCP | Inbound | 6443 | Kubernetes API server | All |
| TCP | Inbound | 2379-2380 | etcd server client API | kube-apiserver, etcd |
| TCP | Inbound | 10250 | Kubelet API | Self, Control plane |
| TCP | Inbound | 10259 | kube-scheduler | Self |
| TCP | Inbound | 10257 | kube-controller-manager | Self |

> Note: etcd can also be hosted externally or configured to run on custom ports.

---

## Worker Nodes

| Protocol | Direction | Port Range | Purpose | Used By |
|---------|-----------|------------|---------|---------|
| TCP | Inbound | 10250 | Kubelet API | Self, Control plane |
| TCP | Inbound | 10256 | kube-proxy | Self, Load balancers |
| TCP | Inbound | 30000-32767 | NodePort Services† | All |
| UDP | Inbound | 30000-32767 | NodePort Services† | All |

† Default port range for **NodePort Services**.

---

## Notes

- All default port numbers can be overridden.
- If custom ports are configured, those ports must be opened instead of the defaults.
- A common practice is exposing the **Kubernetes API server** via **port 443** using a load balancer, which forwards traffic to the API server running on **port 6443**.
