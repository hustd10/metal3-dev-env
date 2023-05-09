kubectl set image deployment/capi-controller-manager manager=ranyc/mirror-registry-k8s-io:cluster-api-controller-v1.4.2 -n capi-system
kubectl set image deployment/capi-kubeadm-bootstrap-controller-manager manager=ranyc/mirror-registry-k8s-io:kubeadm-bootstrap-controller-v1.4.2 -n capi-kubeadm-bootstrap-system
kubectl set image deployment/capi-kubeadm-control-plane-controller-manager manager=ranyc/mirror-registry-k8s-io:kubeadm-control-plane-controller-v1.4.2 -n capi-kubeadm-control-plane-system
