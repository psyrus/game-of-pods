# Master node: coredns deployment has image: 'k8s.gcr.io/coredns:1.6.7'
# Fix kube-apiserver. Make sure its running and healthy.
# kubeconfig = /root/.kube/config, User = 'kubernetes-admin' Cluster: Server Port = '6443'

# Open /etc/kubernetes/manifests/kube-apiserver.yaml
# Change ca-authority.crt to ca.crt
sed -i 's/kubernetes\/pki\/ca-authority.crt/kubernetes\/pki\/ca.crt/g'
# Update deployment coredns in kube-system namespace to have the image:
## kubectl set image deployment/coredns coredns=k8s.gcr.io/coredns:1.6.7 -n kube-system