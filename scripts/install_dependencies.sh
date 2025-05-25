#!/bin/bash
set -e
echo "Installing PHP dependencies..."
cd /var/www/html
if [ -f composer.json ]; then
  composer install --no-dev --optimize-autoloader
fi

echo "Installing PHP and Apache dependencies..."

sudo yum update -y
sudo yum install -y httpd php php-mysqlnd unzip

sudo systemctl enable httpd
sudo systemctl start httpd
