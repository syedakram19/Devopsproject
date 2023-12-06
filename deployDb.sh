# Set the admin user and password for MySQL database prior to installation
echo "Configuring MySQL"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password admin'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password admin'
# Install MySQL server
echo "MySQL server"
sudo apt-get -y install mysql-server
sudo service mysql start