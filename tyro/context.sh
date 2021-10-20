# Certificate and key pair for user drogo is created under /root. Add this user to kubeconfig = /root/.kube/config, User = drogo, client-key = /root/drogo.key client-certificate = /root/drogo.crt
# Create a new context in the default config file (/root/.kube/config) called 'developer' with user = drogo and cluster = kubernetes

kubectl config set-credentials drogo --client-certificate=/root/drogo.crt --client-key=/root/drogo.key

kubectl config set-context developer --cluster=kubernetes --namespace=default --user=drogo

# Note: Only do this next step after the roles have been properly established
kubectl config use-context developer