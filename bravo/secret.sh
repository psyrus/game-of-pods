kubectl create secret generic drupal-mysql-secret --from-literal=MYSQL_ROOT_PASSWORD=root_password --from-literal=MYSQL_DATABASE=drupal-database --from-literal=MYSQL_USER=root

# apiVersion: v1
# data:
#   MYSQL_DATABASE: ZHJ1cGFsLWRhdGFiYXNl
#   MYSQL_ROOT_PASSWORD: cm9vdF9wYXNzd29yZA==
#   MYSQL_USER: cm9vdA==
# kind: Secret
# type: Opaque