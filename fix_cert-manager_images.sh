# 示例中的集群是由 kind 创建的，跑在 kind-control-plane docker 容器中（包括 kubelet），因此要把镜像放到这个容器中

docker pull quay.io/jetstack/cert-manager-controller:v1.11.0
docker save quay.io/jetstack/cert-manager-controller:v1.11.0 -o cert-manager-controller-v1.11.0.tar
docker cp cert-manager-controller-v1.11.0.tar kind-control-plane:/root
docker exec -it kind-control-plane ctr -n=k8s.io image import /root/cert-manager-controller-v1.11.0.tar

docker pull quay.io/jetstack/cert-manager-cainjector:v1.11.0
docker save quay.io/jetstack/cert-manager-cainjector:v1.11.0 -o cert-manager-cainjector-v1.11.0.tar
docker cp cert-manager-cainjector-v1.11.0.tar kind-control-plane:/root
docker exec -it kind-control-plane ctr -n=k8s.io image import /root/cert-manager-cainjector-v1.11.0.tar

docker pull quay.io/jetstack/cert-manager-webhook:v1.11.0
docker save quay.io/jetstack/cert-manager-webhook:v1.11.0 -o cert-manager-webhook-v1.11.0.tar
docker cp cert-manager-webhook-v1.11.0.tar kind-control-plane:/root
docker exec -it kind-control-plane ctr -n=k8s.io image import /root/cert-manager-webhook-v1.11.0.tar
