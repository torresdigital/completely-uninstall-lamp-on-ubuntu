# Contact me For Your Projects.
# Torres Digital | Sites → Lojas Virtuais e e-Commerce
# https://www.facebook.com/torresdigital
# torresdigital.com.br

#!/bin/bash
# This will remove Apache
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin 
sudo apt remove apache2.*
sudo apt-get autoremove
whereis apache2
sudo rm -rf /etc/apache2

# This will remove PHP version. 
php --version
sudo apt-get purge `dpkg -l | grep php8.0| awk '{print $2}' |tr "\n" " "`
sudo apt-get purge php8.* -y
sudo apt-get purge `dpkg -l | grep php7.0| awk '{print $2}' |tr "\n" " "`
sudo apt-get purge php7.* -y
sudo apt-get purge `dpkg -l | grep php5.0| awk '{print $2}' |tr "\n" " "`
sudo apt-get purge php5.* -y
sudo apt-get autoremove --purge
whereis php
sudo rm -rf /etc/php
sudo apt update -y
sudo apt upgrade -y
php --version

# This will remove MySql
sudo service mysql stop
sudo apt-get remove --purge *mysql\*
sudo apt-get remove --purge mysql-server mysql-client mysql-common -y
sudo rm -rf /etc/mysql
sudo apt-get autoremove
sudo apt-get autoclean

sudo reboot




