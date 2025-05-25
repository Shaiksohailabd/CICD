#!/bin/bash
echo "Restarting Apache server..."

if systemctl list-units --type=service | grep -q httpd.service; then
  sudo systemctl restart httpd
elif systemctl list-units --type=service | grep -q apache2.service; then
  sudo systemctl restart apache2
else
  echo "Apache server not installed. Exiting."
  exit 1
fi

