#!/bin/sh

echo 'Install composer'
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv -f composer.phar /usr/local/bin/composer

composer global require hirak/prestissimo

echo 'Install laravel envoy'
composer global require laravel/envoy

echo 'Install php-cs-fixer'
composer global require friendsofphp/php-cs-fixer

echo 'Install phpunit-watcher'
composer global require spatie/phpunit-watcher

echo 'Install mixed-content-scanner-cli'
composer global require spatie/mixed-content-scanner-cli
