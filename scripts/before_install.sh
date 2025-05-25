#!/bin/bash
set -e
echo "Stopping Apache server..."
sudo systemctl stop apache2 || true
