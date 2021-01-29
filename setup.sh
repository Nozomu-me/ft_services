#! /bin/sh

minikube stop
minikube delete
minikube start
eval $(minikube -p minikube docker-env)
docker build -t im_mysql srcs/mysql
docker build -t im_nginx srcs/nginx 
docker build -t im_phpmyadmin srcs/phpmyadmin
docker build -t im_wordpress srcs/wordpress
# docker build -t im_ftps srcs/ftps

# #install metallb
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/metallb.yaml

kubectl apply -f srcs/mysql/mysql.yaml 
kubectl apply -f srcs/nginx/nginx.yaml 
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml 
kubectl apply -f srcs/wordpress/wordpress.yaml
# kubectl apply -f srcs/ftps/ftps.yaml

# kubectl delete -f srcs/nginx/nginx.yaml 
# kubectl delete -f srcs/phpmyadmin/phpmyadmin.yaml 
# kubectl delete -f srcs/wordpress/wordpress.yaml 
# kubectl delete -f srcs/mysql/mysql.yaml 

minikube stop
minikube start
eval $(minikube docker-env)
minikube dashboard