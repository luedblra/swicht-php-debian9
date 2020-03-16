#! /bin/bash

a2dismod php7.2 php7.3
systemctl restart apache2

update-alternatives --set php /usr/bin/php7.1
update-alternatives --set phar /usr/bin/phar7.1
update-alternatives --set phar.phar /usr/bin/phar.phar7.1
a2enmod php7.1
systemctl restart apache2
php -v
