#! /bin/sh

/etc/init.d/mariadb setup
service mariadb start

mysql < /tmp/create_tables.sql
mysql -u root -e "CREATE USER 'amal'@'%' IDENTIFIED BY 'amal';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'amal'@'%';"
mysql -u root -e "CREATE USER 'amouassi'@'%' IDENTIFIED BY 'amal';"
mysql -u root -e "GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'amouassi'@'%';"
mysql -u root -e "CREATE DATABASE wordpress_db;"
mysql -u root -e "GRANT ALL ON wordpress_db.* TO 'amal'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -D wordpress_db < /tmp/wordpress_db.sql
sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
service mariadb restart
supervisord -c /etc/supervisord.conf
