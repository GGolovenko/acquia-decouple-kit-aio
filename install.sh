#!/bin/bash

echo "Install of Acquia Decopled kit starting..."
git submodule init
git submodule update
echo 'Pulling GIT dependencies'
git pull
echo 'Starting docker and installing Drupal...'
docker-compose up -d && docker-compose exec php ./spin-up.sh