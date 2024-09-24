#!/bin/bash

# Téléchargement de GLPI
wget https://github.com/glpi-project/glpi/releases/download/9.5.7/glpi-9.5.7.tgz

# Extraction de l'archive
tar -xvzf glpi-9.5.7.tgz -C /var/www/html/

# Renommer le répertoire
mv /var/www/html/glpi /var/www/html/my-glpi

# Attribution des permissions
chown -R www-data:www-data /var/www/html/my-glpi
chmod -R 755 /var/www/html/my-glpi

# Création de la base de données MySQL
mysql -u root -p -e "CREATE DATABASE glpidb;"
mysql -u root -p -e "CREATE USER 'glpiuser'@'localhost' IDENTIFIED BY 'glpipassword';"
mysql -u root -p -e "GRANT ALL PRIVILEGES ON glpidb.* TO 'glpiuser'@'localhost';"
mysql -u root -p -e "FLUSH PRIVILEGES;"

# Configuration du serveur Apache
cat <<EOF > /etc/apache2/sites-available/glpi.conf
<VirtualHost *:80>
    ServerAdmin admin@example.com
    DocumentRoot /var/www/html/my-glpi
    ServerName glpi.example.com

    <Directory /var/www/html/my-glpi>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/glpi_error.log
    CustomLog ${APACHE_LOG_DIR}/glpi_access.log combined
</VirtualHost>
EOF

# Activer le site
a2ensite glpi.conf

# Redémarrer Apache
systemctl restart apache2
