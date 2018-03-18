# Apache2, MariaDB, PHP (LAMP) is an alternative to LEMP. LAMP is an acronym for Linux, Apache2, MySQL  / MariaDB and PHP. 
#It’s collection of opensource software that powers some of the most popular websites and applications online today.
# This brief tutorial shows students and new users how to install LAMP on Ubuntu 17.10. Many websites are powered by the LAMP stack. 
#They run Linux servers with Apache2, MariaDB and PHP installed. If you need to run a PHP-based website like WordPress, Drupal or Joomla, 
#then LAMP or LEMP should be considered.
# Linux, Apache2, MySQL and PHP (LAMP) has always been the preferred choice to run dynamic PHP based applications and websites. 
#Although LEMP is rapidly gaining traction because of Nginx HTTP server, LAMP is still dominant.
# To get LAMP installed on Ubuntu 17.10, follow the steps below:

# STEP 1: UPDATE UBUNTU SERVER
# Update Ubuntu first before installing additional software and packages. This assumes that you have administrative (root) rights to the systems 
#and can install packages from the command line. To update Ubuntu server, run the commands below:

sudo apt update && sudo apt dist-upgrade && sudo apt autoremove

#STEP 2: INSTALL APACHE2 HTTP SERVER
#After updating Ubuntu, run the commands below to install Nginx HTTP server.

sudo apt install apache2

#After installing Nginx, the commands below can be used to stop, start, disable and enable Nginx service

sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo systemctl disable apache2.service
sudo systemctl enable apache2.service

#STEP 3: INSTALL MARIADB DATABASE SERVER
#MariaDB is a drop-in replacement for MySQL and the default opensource database server. To install MariaDB run the commands below

sudo apt install mariadb-server mariadb-client

#After installing, the commands below can be used to stop, start and enable MariaDB service to always start up when the server boots.

sudo systemctl stop mariadb.service
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service

#After that, run the commands below to secure MariaDB server.

sudo mysql_secure_installation

#When prompted, answer the questions below by following the guide.

#Enter current password for root (enter for none): Just press the Enter
#Set root password? [Y/n]: Y
#New password: Create password
#Re-enter new password: Repeat password
#Remove anonymous users? [Y/n]: Y
#Disallow root login remotely? [Y/n]: Y
#Remove test database and access to it? [Y/n]:  Y
#Reload privilege tables now? [Y/n]:  Y
#Continue below to install PHP and related PHP modules.

#STEP 4: INSTALLING PHP ON UBUNTU

#The last step is to install PHP and other PHP modules on Ubuntu to get the LAMP stack complete.
#To install PHP run the commands below:

sudo apt install php libapache2-mod-php

#For most PHP applications to function properly, you must also install related PHP modules. Run the commands below to get as much installed.

sudo apt install php php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-mcrypt php-ldap php-zip php-curl