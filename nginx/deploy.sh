#!/bin/bash -x

sudo apt update
sudo apt install -y nginx

sudo systemctl stop nginx

sudo cp ./nginx.conf                            /etc/nginx/
sudo cp ./sites-available/runbook.sosomasox.com /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/runbook.sosomasox.com /etc/nginx/sites-enabled/

sudo systemctl start nginx

exit 0
