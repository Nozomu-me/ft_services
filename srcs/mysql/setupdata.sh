# ! /bin/sh

/etc/init.d/mariadb setup
# rc-update add mariadb default
# rc-status default
rc-service mariadb start
mysql < /tmp/create_tables.sql
mysql -uroot -e "CREATE USER 'amal'@'%' IDENTIFIED BY 'amal';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'amal'@'%' WITH GRANT OPTION;"
mysql -uroot -e "CREATE USER 'amouassi'@'%' IDENTIFIED BY 'amouassi';"
mysql -uroot -e "GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'amal'@'localhost' IDENTIFIED BY 'amal';"
mysql -uroot -e "CREATE DATABASE wordpress_db;"
mysql -uroot -e "GRANT ALL ON wordpress_db.* TO 'amal'@'%'"
mysql -uroot -e "FLUSH PRIVILEGES;"
mysql -uroot -D wordpress_db < /tmp/wordpress_db.sql

# tail -F /dev/null