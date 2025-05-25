#!/bin/bash
set -e
echo "Installing PHP dependencies..."
cd /var/www/html
if [ -f composer.json ]; then
  composer install --no-dev --optimize-autoloader
fi
