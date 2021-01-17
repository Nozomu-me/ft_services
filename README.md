# ft_services

# install and set up nginx

https://wiki.alpinelinux.org/wiki/Nginx

https://codingwithmanny.medium.com/custom-wordpress-docker-setup-8851e98e6b8

# install openssl

https://codingwithmanny.medium.com/configure-self-signed-ssl-for-nginx-docker-from-a-scratch-7c2bcd5478c6

# install wordpress

https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lamp-on-debian-9

https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose
    
https://codingwithmanny.medium.com/custom-wordpress-docker-setup-8851e98e6b8

# install mysql(mariadb)

https://techviewleo.com/how-to-install-mariadb-on-alpine-linux/#

https://wiki.alpinelinux.org/wiki/Mysql

https://wiki.alpinelinux.org/wiki/Production_DataBases_:_mysql

# Create MySQL Users Accounts and Grant Privileges
    
https://stackoverflow.com/questions/16747035/how-do-i-create-a-user-with-the-same-privileges-as-root-in-mysql-mariadb

https://linuxize.com/post/how-to-create-mysql-user-accounts-and-grant-privileges/
              
# install PHP 7 fpm on Alpine Linux
    
https://www.cyberciti.biz/faq/how-to-install-php-7-fpm-on-alpine-linux/
    
 
# enable and start services on Alpine Linux

https://www.cyberciti.biz/faq/how-to-enable-and-start-services-on-alpine-linux/
 
# Install phpmyadmin
    
https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10
    
https://docs.rackspace.com/support/how-to/install-and-configure-phpmyadmin/
    

# Install metallb

https://blog.tekspace.io/setup-kubernetes-cluster-using-k3s-metallb-letsencrypt-on-bare-metal/

https://asergo.com/knowledge-base/kubernetes/private-managed-cluster/load-balancer.html#layer-2-arp-ndp


# Error sources

https://stackoverflow.com/questions/56392041/getting-errimageneverpull-in-pods


# Kubernetes setup

https://kubernetes.io/docs/concepts/services-networking/service/

https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/

https://kubernetes.io/fr/docs/concepts/services-networking/service/


# USEFULL COMMANDS

One liner to stop / remove all of Docker containers:

        docker stop $(docker ps -a -q)
        docker rm $(docker ps -a -q)
