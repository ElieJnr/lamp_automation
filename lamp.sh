#!/bin/bash

echo "🔄 Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

echo "🌐 Installation d'Apache..."
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2

echo "🛢️ Installation de MariaDB..."
sudo apt install mariadb-server -y
sudo systemctl enable mariadb
sudo systemctl start mariadb

echo "🔐 Sécurisation de MariaDB..."
sudo mysql_secure_installation <<EOF

y
root
root
y
y
y
y
EOF

echo "⚙️ Installation de PHP et des modules..."
sudo apt install php libapache2-mod-php php-mysql -y

echo "🧪 Création du fichier info.php..."
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

echo "📊 Installation de phpMyAdmin..."
sudo apt install phpmyadmin -y

echo "🔗 Lien symbolique vers /var/www/html/phpmyadmin"
sudo ln -s /usr/share/phpmyadmin /var/www/html

echo "🔄 Redémarrage d'Apache..."
sudo systemctl restart apache2

echo "✅ Installation terminée !"
echo "🌐 Accède à http://localhost pour tester Apache"
echo "🌐 Accède à http://localhost/info.php pour tester PHP"
echo "🌐 Accède à http://localhost/phpmyadmin pour phpMyAdmin (login: root / mot de passe: root)"
