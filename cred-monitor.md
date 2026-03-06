 [monitoring : Display monitoring stack status] ********************************************************************************************************************************************
ok: [rhel-master] => {
    "msg": [
        "=== MONITORING ===",
        "NAME                                                       READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES",
        "kube-prometheus-stack-grafana-55b8859896-94j56             3/3     Running   0          81s   10.244.1.141   rhel-worker2   <none>           <none>",
        "kube-prometheus-stack-kube-state-metrics-776c898f6-2qcr9   1/1     Running   0          81s   10.244.2.156   rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-operator-5656f9b88b-66j4r            1/1     Running   0          81s   10.244.2.38    rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-4kthb       1/1     Running   0          81s   192.168.1.29   rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-d2mmd       1/1     Running   0          81s   192.168.1.30   rhel-worker2   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-mkz8w       1/1     Running   0          81s   192.168.1.28   rhel-master    <none>           <none>",
        "prometheus-kube-prometheus-stack-prometheus-0              2/2     Running   0          74s   10.244.1.8     rhel-worker2   <none>           <none>",
        "=== SERVICES ===",
        "NAME                                             TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                         AGE",
        "kube-prometheus-stack-alertmanager               NodePort    10.105.172.223   <none>        9093:32004/TCP,8080:31831/TCP   81s",
        "kube-prometheus-stack-grafana                    NodePort    10.110.239.151   <none>        80:32000/TCP                    81s",
        "kube-prometheus-stack-kube-state-metrics         ClusterIP   10.104.62.139    <none>        8080/TCP                        81s",
        "kube-prometheus-stack-operator                   ClusterIP   10.108.22.145    <none>        443/TCP                         81s",
        "kube-prometheus-stack-prometheus                 NodePort    10.105.100.54    <none>        9090:32002/TCP,8080:31360/TCP   81s",
        "kube-prometheus-stack-prometheus-node-exporter   ClusterIP   10.99.134.224    <none>        9100/TCP                        81s",
        "prometheus-operated                              ClusterIP   None             <none>        9090/TCP                        74s",
        "=== LOGGING ===",
        "NAME                            READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES",
        "fluent-bit-bccf6                1/1     Running   0          22s   10.244.2.79    rhel-worker1   <none>           <none>",
        "fluent-bit-hzssr                1/1     Running   0          22s   10.244.1.185   rhel-worker2   <none>           <none>",
        "fluent-bit-rmtk4                1/1     Running   0          22s   10.244.0.221   rhel-master    <none>           <none>",
        "loki-canary-hxdtm               1/1     Running   0          58s   10.244.2.140   rhel-worker1   <none>           <none>",
        "loki-canary-wrvrn               1/1     Running   0          58s   10.244.1.2     rhel-worker2   <none>           <none>",
        "loki-chunks-cache-0             2/2     Running   0          58s   10.244.2.104   rhel-worker1   <none>           <none>",
        "loki-gateway-6854ff5566-x9pfm   1/1     Running   0          58s   10.244.2.13    rhel-worker1   <none>           <none>",
        "loki-results-cache-0            2/2     Running   0          58s   10.244.1.225   rhel-worker2   <none>           <none>",
        "=== DASHBOARD ===",
        "NAME                                         READY   STATUS              RESTARTS   AGE",
        "dashboard-metrics-scraper-5657497c4c-x8mbm   0/1     ContainerCreating   0          6s",
        "kubernetes-dashboard-78f87ddfc-z5zqn         0/1     ContainerCreating   0          6s"
    ]
}
ok: [rhel-worker1] => {
    "msg": [
        "=== MONITORING ===",
        "NAME                                                       READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES",
        "kube-prometheus-stack-grafana-55b8859896-94j56             3/3     Running   0          81s   10.244.1.141   rhel-worker2   <none>           <none>",
        "kube-prometheus-stack-kube-state-metrics-776c898f6-2qcr9   1/1     Running   0          81s   10.244.2.156   rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-operator-5656f9b88b-66j4r            1/1     Running   0          81s   10.244.2.38    rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-4kthb       1/1     Running   0          81s   192.168.1.29   rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-d2mmd       1/1     Running   0          81s   192.168.1.30   rhel-worker2   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-mkz8w       1/1     Running   0          81s   192.168.1.28   rhel-master    <none>           <none>",
        "prometheus-kube-prometheus-stack-prometheus-0              2/2     Running   0          74s   10.244.1.8     rhel-worker2   <none>           <none>",
        "=== SERVICES ===",
        "NAME                                             TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                         AGE",
        "kube-prometheus-stack-alertmanager               NodePort    10.105.172.223   <none>        9093:32004/TCP,8080:31831/TCP   81s",
        "kube-prometheus-stack-grafana                    NodePort    10.110.239.151   <none>        80:32000/TCP                    81s",
        "kube-prometheus-stack-kube-state-metrics         ClusterIP   10.104.62.139    <none>        8080/TCP                        81s",
        "kube-prometheus-stack-operator                   ClusterIP   10.108.22.145    <none>        443/TCP                         81s",
        "kube-prometheus-stack-prometheus                 NodePort    10.105.100.54    <none>        9090:32002/TCP,8080:31360/TCP   81s",
        "kube-prometheus-stack-prometheus-node-exporter   ClusterIP   10.99.134.224    <none>        9100/TCP                        81s",
        "prometheus-operated                              ClusterIP   None             <none>        9090/TCP                        74s",
        "=== LOGGING ===",
        "NAME                            READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES",
        "fluent-bit-bccf6                1/1     Running   0          22s   10.244.2.79    rhel-worker1   <none>           <none>",
        "fluent-bit-hzssr                1/1     Running   0          22s   10.244.1.185   rhel-worker2   <none>           <none>",
        "fluent-bit-rmtk4                1/1     Running   0          22s   10.244.0.221   rhel-master    <none>           <none>",
        "loki-canary-hxdtm               1/1     Running   0          58s   10.244.2.140   rhel-worker1   <none>           <none>",
        "loki-canary-wrvrn               1/1     Running   0          58s   10.244.1.2     rhel-worker2   <none>           <none>",
        "loki-chunks-cache-0             2/2     Running   0          58s   10.244.2.104   rhel-worker1   <none>           <none>",
        "loki-gateway-6854ff5566-x9pfm   1/1     Running   0          58s   10.244.2.13    rhel-worker1   <none>           <none>",
        "loki-results-cache-0            2/2     Running   0          58s   10.244.1.225   rhel-worker2   <none>           <none>",
        "=== DASHBOARD ===",
        "NAME                                         READY   STATUS              RESTARTS   AGE",
        "dashboard-metrics-scraper-5657497c4c-x8mbm   0/1     ContainerCreating   0          6s",
        "kubernetes-dashboard-78f87ddfc-z5zqn         0/1     ContainerCreating   0          6s"
    ]
}
ok: [rhel-worker2] => {
    "msg": [
        "=== MONITORING ===",
        "NAME                                                       READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES",
        "kube-prometheus-stack-grafana-55b8859896-94j56             3/3     Running   0          81s   10.244.1.141   rhel-worker2   <none>           <none>",
        "kube-prometheus-stack-kube-state-metrics-776c898f6-2qcr9   1/1     Running   0          81s   10.244.2.156   rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-operator-5656f9b88b-66j4r            1/1     Running   0          81s   10.244.2.38    rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-4kthb       1/1     Running   0          81s   192.168.1.29   rhel-worker1   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-d2mmd       1/1     Running   0          81s   192.168.1.30   rhel-worker2   <none>           <none>",
        "kube-prometheus-stack-prometheus-node-exporter-mkz8w       1/1     Running   0          81s   192.168.1.28   rhel-master    <none>           <none>",
        "prometheus-kube-prometheus-stack-prometheus-0              2/2     Running   0          74s   10.244.1.8     rhel-worker2   <none>           <none>",
        "=== SERVICES ===",
        "NAME                                             TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                         AGE",
        "kube-prometheus-stack-alertmanager               NodePort    10.105.172.223   <none>        9093:32004/TCP,8080:31831/TCP   81s",
        "kube-prometheus-stack-grafana                    NodePort    10.110.239.151   <none>        80:32000/TCP                    81s",
        "kube-prometheus-stack-kube-state-metrics         ClusterIP   10.104.62.139    <none>        8080/TCP                        81s",
        "kube-prometheus-stack-operator                   ClusterIP   10.108.22.145    <none>        443/TCP                         81s",
        "kube-prometheus-stack-prometheus                 NodePort    10.105.100.54    <none>        9090:32002/TCP,8080:31360/TCP   81s",
        "kube-prometheus-stack-prometheus-node-exporter   ClusterIP   10.99.134.224    <none>        9100/TCP                        81s",
        "prometheus-operated                              ClusterIP   None             <none>        9090/TCP                        74s",
        "=== LOGGING ===",
        "NAME                            READY   STATUS    RESTARTS   AGE   IP             NODE           NOMINATED NODE   READINESS GATES",
        "fluent-bit-bccf6                1/1     Running   0          22s   10.244.2.79    rhel-worker1   <none>           <none>",
        "fluent-bit-hzssr                1/1     Running   0          22s   10.244.1.185   rhel-worker2   <none>           <none>",
        "fluent-bit-rmtk4                1/1     Running   0          22s   10.244.0.221   rhel-master    <none>           <none>",
        "loki-canary-hxdtm               1/1     Running   0          58s   10.244.2.140   rhel-worker1   <none>           <none>",
        "loki-canary-wrvrn               1/1     Running   0          58s   10.244.1.2     rhel-worker2   <none>           <none>",
        "loki-chunks-cache-0             2/2     Running   0          58s   10.244.2.104   rhel-worker1   <none>           <none>",
        "loki-gateway-6854ff5566-x9pfm   1/1     Running   0          58s   10.244.2.13    rhel-worker1   <none>           <none>",
        "loki-results-cache-0            2/2     Running   0          58s   10.244.1.225   rhel-worker2   <none>           <none>",
        "=== DASHBOARD ===",
        "NAME                                         READY   STATUS              RESTARTS   AGE",
        "dashboard-metrics-scraper-5657497c4c-x8mbm   0/1     ContainerCreating   0          6s",
        "kubernetes-dashboard-78f87ddfc-z5zqn         0/1     ContainerCreating   0          6s"
    ]
}

TASK [monitoring : Display access information] *************************************************************************************************************************************************
ok: [rhel-master] => {
    "msg": [
        "================================================",
        " MONITORING STACK ACCESS INFORMATION",
        "================================================",
        "Grafana      : http://192.168.1.28:32000",
        "               user: admin",
        "               pass: Admin@2026",
        "Prometheus   : http://192.168.1.28:32002",
        "Alertmanager : http://192.168.1.28:32004",
        "K8s Dashboard: https://192.168.1.28:32003",
        "================================================",
        "Dashboard Token:",
        "eyJhbGciOiJSUzI1NiIsImtpZCI6InhGZGJJdk1YU2NaYU0xY1B4MmxaRmplVkZ2cVZpNjFIRUlkNEoydXVHaFkifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzcyNzgwMDUyLCJpYXQiOjE3NzI3NzY0NTIsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsInNlcnZpY2VhY2NvdW50Ijp7Im5hbWUiOiJhZG1pbi11c2VyIiwidWlkIjoiY2Y2MDM5M2UtODQ3Yi00Y2Y3LWEyODktYzc1YzEwMmU2ZTQ3In19LCJuYmYiOjE3NzI3NzY0NTIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlcm5ldGVzLWRhc2hib2FyZDphZG1pbi11c2VyIn0.gu6tmuMlN0PjkvBgjxoJhpkdKa1y-vRG213y2wDCxtLUtg1XalQS6I9RJt6F07aTMzAsJD8kF3rvGJxmjal_nF_8dEH1Dx5xWN8fOq7-q1ugr3C1mr1rGcSVxQqjRxfZ1ufzl2kYjLeJK4I8NlyDXiL_4ZF0pUSwfLiHBbf3hghP_5Enp3r5z4aSTty5I7Ih4_suSrSBUAmaoHedUSO13b2Dab6kHWnMQ5-OWWbQQ4E6EnzK-kK3U8R1FTwKiyG5j_-7dsVCH1P4hwEP1ZaXIn24vb4KsXcbSuuaYJF6hodV4hcLLwDxAeNuMYUkeYDrAW4AmQnMlDODSHpM6yB0Sw",
        "================================================"
    ]
}
ok: [rhel-worker1] => {
    "msg": [
        "================================================",
        " MONITORING STACK ACCESS INFORMATION",
        "================================================",
        "Grafana      : http://192.168.1.28:32000",
        "               user: admin",
        "               pass: Admin@2026",
        "Prometheus   : http://192.168.1.28:32002",
        "Alertmanager : http://192.168.1.28:32004",
        "K8s Dashboard: https://192.168.1.28:32003",
        "================================================",
        "Dashboard Token:",
        "eyJhbGciOiJSUzI1NiIsImtpZCI6InhGZGJJdk1YU2NaYU0xY1B4MmxaRmplVkZ2cVZpNjFIRUlkNEoydXVHaFkifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzcyNzgwMDUyLCJpYXQiOjE3NzI3NzY0NTIsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsInNlcnZpY2VhY2NvdW50Ijp7Im5hbWUiOiJhZG1pbi11c2VyIiwidWlkIjoiY2Y2MDM5M2UtODQ3Yi00Y2Y3LWEyODktYzc1YzEwMmU2ZTQ3In19LCJuYmYiOjE3NzI3NzY0NTIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlcm5ldGVzLWRhc2hib2FyZDphZG1pbi11c2VyIn0.gu6tmuMlN0PjkvBgjxoJhpkdKa1y-vRG213y2wDCxtLUtg1XalQS6I9RJt6F07aTMzAsJD8kF3rvGJxmjal_nF_8dEH1Dx5xWN8fOq7-q1ugr3C1mr1rGcSVxQqjRxfZ1ufzl2kYjLeJK4I8NlyDXiL_4ZF0pUSwfLiHBbf3hghP_5Enp3r5z4aSTty5I7Ih4_suSrSBUAmaoHedUSO13b2Dab6kHWnMQ5-OWWbQQ4E6EnzK-kK3U8R1FTwKiyG5j_-7dsVCH1P4hwEP1ZaXIn24vb4KsXcbSuuaYJF6hodV4hcLLwDxAeNuMYUkeYDrAW4AmQnMlDODSHpM6yB0Sw",
        "================================================"
    ]
}
ok: [rhel-worker2] => {
    "msg": [
        "================================================",
        " MONITORING STACK ACCESS INFORMATION",
        "================================================",
        "Grafana      : http://192.168.1.28:32000",
        "               user: admin",
        "               pass: Admin@2026",
        "Prometheus   : http://192.168.1.28:32002",
        "Alertmanager : http://192.168.1.28:32004",
        "K8s Dashboard: https://192.168.1.28:32003",
        "================================================",
        "Dashboard Token:",
        "eyJhbGciOiJSUzI1NiIsImtpZCI6InhGZGJJdk1YU2NaYU0xY1B4MmxaRmplVkZ2cVZpNjFIRUlkNEoydXVHaFkifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzcyNzgwMDUyLCJpYXQiOjE3NzI3NzY0NTIsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsInNlcnZpY2VhY2NvdW50Ijp7Im5hbWUiOiJhZG1pbi11c2VyIiwidWlkIjoiY2Y2MDM5M2UtODQ3Yi00Y2Y3LWEyODktYzc1YzEwMmU2ZTQ3In19LCJuYmYiOjE3NzI3NzY0NTIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlcm5ldGVzLWRhc2hib2FyZDphZG1pbi11c2VyIn0.gu6tmuMlN0PjkvBgjxoJhpkdKa1y-vRG213y2wDCxtLUtg1XalQS6I9RJt6F07aTMzAsJD8kF3rvGJxmjal_nF_8dEH1Dx5xWN8fOq7-q1ugr3C1mr1rGcSVxQqjRxfZ1ufzl2kYjLeJK4I8NlyDXiL_4ZF0pUSwfLiHBbf3hghP_5Enp3r5z4aSTty5I7Ih4_suSrSBUAmaoHedUSO13b2Dab6kHWnMQ5-OWWbQQ4E6EnzK-kK3U8R1FTwKiyG5j_-7dsVCH1P4hwEP1ZaXIn24vb4KsXcbSuuaYJF6hodV4hcLLwDxAeNuMYUkeYDrAW4AmQnMlDODSHpM6yB0Sw",
        "================================================"
    ]
}
