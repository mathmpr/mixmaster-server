#!/bin/bash

MYSQL_ROOT_PASSWORD=$1
HOME=$PWD

sudo rm /var/lib/mysql/ -R > /dev/null 2>&1
sudo rm /etc/mysql/ -R > /dev/null 2>&1
sudo apt-get autoremove mysql* --purge -y > /dev/null 2>&1
sudo apt-get remove apparmor -y > /dev/null 2>&1

sudo groupadd mysql > /dev/null 2>&1
sudo useradd -g mysql mysql > /dev/null 2>&1
sudo mkdir /etc/mysql/ &&  printf "[mysqld]\nbind-address=0.0.0.0" | sudo tee /etc/mysql/my.cnf > /dev/null 2>&1
cd /etc/mysql && sudo chown -R mysql:mysql * > /dev/null 2>&1

cd "$HOME" && sudo tar -xvf mysql-5.7.34-linux-glibc2.12-x86_64.tar.gz > /dev/null 2>&1
sudo mv mysql-5.7.34-linux-glibc2.12-x86_64 /usr/local/mysql > /dev/null 2>&1
cd /usr/local/mysql && sudo chown -R mysql:mysql * > /dev/null 2>&1
sudo apt-get install libaio1 libncurses5 -y > /dev/null 2>&1

sudo rm /usr/local/bin/mysql /dev/null 2>&1
sudo rm /usr/local/bin/mysqldump /dev/null 2>&1
sudo rm /usr/local/bin/mysql_secure_installation /dev/null 2>&1
sudo ln -s /usr/local/mysql/bin/mysql /usr/local/bin/mysql > /dev/null 2>&1
sudo ln -s /usr/local/mysql/bin/mysqldump /usr/local/bin/mysqldump > /dev/null 2>&1
sudo ln -s /usr/local/mysql/bin/mysql_secure_installation /usr/local/bin/mysql_secure_installation > /dev/null 2>&1
sudo cp -fp /usr/local/mysql/support-files/mysql.server /etc/init.d/mysql.server > /dev/null 2>&1

sudo /usr/local/mysql/bin/mysqld --initialize-insecure --user=mysql > /dev/null 2>&1
sudo /usr/local/mysql/bin/mysqld --user=mysql &
sleep 15
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" > /dev/null 2>&1
sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "FLUSH PRIVILEGES;" > /dev/null 2>&1
sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;" > /dev/null 2>&1
sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "FLUSH PRIVILEGES;" > /dev/null 2>&1
sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE USER '$MYSQL_ROOT_PASSWORD'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" > /dev/null 2>&1
sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_ROOT_PASSWORD'@'%';" > /dev/null 2>&1
sudo mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "FLUSH PRIVILEGES;" > /dev/null 2>&1
sudo systemctl enable mysql.server > /dev/null 2>&1
sudo systemctl restart mysql.server > /dev/null 2>&1
cd "$HOME" && sudo rm mysql-5.7.34-linux-glibc2.12-x86_64.tar.gz

exit 0
