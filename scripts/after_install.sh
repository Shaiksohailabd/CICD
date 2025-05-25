#!/bin/bash
echo "Setting file permissions..."

if id "apache" &>/dev/null; then
  USER="apache"
elif id "www-data" &>/dev/null; then
  USER="www-data"
else
  echo "Web server user not found. Exiting."
  exit 1
fi

chown -R $USER:$USER /var/www/html
chmod -R 755 /var/www/html
