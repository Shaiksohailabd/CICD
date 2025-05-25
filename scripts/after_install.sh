#!/bin/bash
set -e
echo "Setting file permissions..."
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html
echo "Cleaning up old deployment files..."
