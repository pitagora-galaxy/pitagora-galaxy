#!/bin/sh

sudo chown galaxy:galaxy /var/www/html/
cd /var/www/html/
wget http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.0.10.9/phpMyAdmin-4.0.10.9-all-languages.tar.gz
tar xvzf phpMyAdmin-4.0.10.9-all-languages.tar.gz
mv phpMyAdmin-4.0.10.9-all-languages phpmyadmin
mkdir phpmyadmin/config
chmod 777 phpmyadmin/config

