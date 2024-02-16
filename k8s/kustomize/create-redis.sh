echo ""
echo "[redis]"
echo "kubectl apply -f redis-service.yml"
kubectl apply -f redis-service.yml

echo ""
echo "kubectl apply -f redis-pod.yml"
kubectl apply -f redis-pod.yml
