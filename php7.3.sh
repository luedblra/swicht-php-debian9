#! /bin/bash

a2dismod php7.1 php7.1
systemctl restart apache2

update-alternatives --set php /usr/bin/php7.3
update-alternatives --set phar /usr/bin/phar7.3
update-alternatives --set phar.phar /usr/bin/phar.phar7.3
a2enmod php7.3
systemctl restart apache2
php -v
