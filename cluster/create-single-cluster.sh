echo ""
echo "=== create Cluster & Ingress-Nginx (Ingress Controller) ==="
echo "[create] cluster creating..."
kind create cluster --name fibonacci-single-cluster --config=single-cluster.yml

echo ""
echo "[create] create ingress-nginx"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

echo ""
echo "[wait] wait ingress-nginx standby"
sleep 20
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s