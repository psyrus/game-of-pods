kubectl create role developer-role --namespace development --resource=services,pods,persistentvolumeclaims --verb=*
kubectl create rolebinding developer-rolebinding --role=developer-role --user=drogo --namespace=development