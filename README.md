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
    
# Install vsftpd (ftps)

https://xennis.org/wiki/Web_server_-_FTP_setup

https://www.commentcamarche.net/faq/5976-changer-le-mot-de-passe-via-un-script

https://superuser.com/questions/801407/error-the-data-connection-could-not-be-established-econnrefused-connection-r

https://stackoverflow.com/questions/49955097/how-do-i-add-a-user-when-im-using-alpine-as-a-base-image

https://stackoverflow.com/questions/46229315/how-to-run-crond-and-vsftpd-on-alpine-linux-docker-container

# Install metallb

https://blog.tekspace.io/setup-kubernetes-cluster-using-k3s-metallb-letsencrypt-on-bare-metal/

https://asergo.com/knowledge-base/kubernetes/private-managed-cluster/load-balancer.html#layer-2-arp-ndp

# Install and setup grafana/influxdb

https://wiki.opnfv.org/display/fastpath/Installing+and+configuring+InfluxDB+and+Grafana+to+display+metrics+with+collectd

https://grafana.com/docs/grafana/latest/administration/configuration/

https://grafana.com/docs/grafana/latest/installation/debian/

https://grafana.com/docs/grafana/latest/datasources/influxdb/

https://medium.com/xebia-engineering/container-and-system-monitoring-with-docker-telegraf-influxdb-and-grafana-on-aws-2007e5511746

# Install and setup ssh

https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i

# Setup supervisord

https://dataandtechnology.wordpress.com/2018/08/14/using-supervisor-with-docker/

https://stackoverflow.com/questions/37313780/how-can-i-start-php-fpm-in-a-docker-container-by-default

https://medium.com/@joor.loohuis/using-supervisor-for-process-management-66a5cc3d3dfa

# Error sources

https://stackoverflow.com/questions/56392041/getting-errimageneverpull-in-pods

* manage reverse proxy:

https://stackoverflow.com/questions/32542282/how-do-i-rewrite-urls-in-a-proxy-response-in-nginx

https://gist.github.com/soheilhy/8b94347ff8336d971ad0

https://serverfault.com/questions/433785/nginx-phpmyadmin-redirecting-to-instead-of-phpmyadmin-upon-login

# Kubernetes setup

https://kubernetes.io/docs/concepts/services-networking/service/

https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/

https://kubernetes.io/fr/docs/concepts/services-networking/service/


# USEFULL COMMANDS

One liner to stop / remove all of Docker containers:

        docker stop $(docker ps -a -q)
        docker rm $(docker ps -a -q)
        
test ssh

        ssh [user]@[ip-adress] -p [port]
