#!/bin/bash

echo "Installing prestissimo for parallel downloading..."
composer global require "hirak/prestissimo:^0.3"

echo "Composer install"
cd /var/www/drupal
composer install --no-dev

echo "Installing Drupal"
cd /var/www/drupal/docroot
yes | drush site-install --db-url=mysql://drupal:drupal@mariadb:3306/drupal --account-name=admin --account-pass=admin --locale=en

read -p "Install dump? (y/n) " answer
case $answer in
y)
    echo "Restoring DB dump"
    yes | drush sql-drop -y
    gunzip < /var/www/dump/dump.sql.gz | drush sqlc
    echo "Restoring files"
    unzip /var/www/dump/files*.zip -d /tmp/dump
    cp /tmp/dump/files/* /var/www/drupal/docroot/sites/default/files/ -R
    rm -rf /tmp/dump/
    ;;
n) echo "Okaaaay...";;
esac
echo
drush cr
drush updb -y
drush uli --uri="http://local.decoupledkit.com:8000/"
echo
echo "Have a nice demo"
