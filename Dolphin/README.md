# dolphin.pro
Dolphin.Pro Social Network Software Platform  

# Configuration Notes:  
Mysql default:  
localhost:3306  
socket: /var/run/mysqld/mysqld.sock  

# Credentials set in AWS AMI:  
db name: exampleDB  
user: example_user  
password: csnet  

# Install necessary modules:  
sudo apt-get install php5-curl  
sudo apt-get install php5-gd  
sudo apt-get install php5-xsl  
sudo apt-get install vsftpd  

For install to work on many clusters, we need to be able to bypass the install lock.  
Dolphin considers itself installed if inc/header.inc.php is available.  


# Make modules available  
chmod -R a+w modules/  
Turn on mod_rewrite  
sudo a2enmod rewrite  
service apache2 restart  

go to /etc/apache2/apache.conf  
In directory structure AllowOverride All   

# configure mail server
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-14-04  

sudo apt-get install mailutils  
service postfix restart  
