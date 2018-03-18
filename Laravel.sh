#Run the commands below to install composer package… it can be used to download and install Laravel

sudo apt install composer unzip

#Change into Laravel directory and run the commands below to download and install Laravel

cd /var/www/html
sudo composer create-project laravel/laravel
sudo composer global require "laravel/installer"

#After running the commands above, a new laravel directory will be created…Run the commands below to set the correct permissions for that directory..

sudo chown -R www-data:www-data /var/www/html/laravel/
sudo chmod -R 755 /var/www/html/laravel/

#STEP 5: CONFIGURE APACHE2
#Finally, configure Apahce2 site configuration file for Laravel. This file will control how users access Laravel content. Run the commands below to create a new configuration file called laravel.conf

sudo nano /etc/apache2/sites-available/laravel.conf

#Then copy and paste the content below into the file and save it. Replace the highlighted line with your own domain name and directory root location.

# <VirtualHost *:80>   
#   ServerAdmin admin@example.com
#      DocumentRoot /var/www/html/laravel/public
#      ServerName example.com
#      ServerAlias www.example.com

#      <Directory /var/www/html/laravel/>
#         Options +FollowSymlinks
#         AllowOverride All
#         Require all granted
#      </Directory>

#      ErrorLog ${APACHE_LOG_DIR}/error.log
#      CustomLog ${APACHE_LOG_DIR}/access.log combined
# </VirtualHost>

#Save the file and exit.

#STEP 6: ENABLE THE LARAVEL AND REWRITE MODULE
#After configuring the VirtualHost above, enable it by running the commands below

sudo a2ensite laravel.conf
sudo a2enmod rewrite

#STEP 7: RESTART APACHE2
#To load all the settings above, restart Apache2 by running the commands below.

sudo systemctl restart apache2.service

#Then open your browser and browse to the server domain name. You should see Laravel page.

sudo chmod 777 -R ~/.composer
sudo chmod 777 -R /var/www/html

