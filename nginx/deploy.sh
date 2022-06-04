#!/bin/bash -x

sudo cp ./nginx.conf                          /etc/nginx/
sudo cp ./sites-available/runbook.sosomasox.com /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/runbook.sosomasox.com /etc/nginx/sites-enabled/

sudo systemctl restart nginx

exit 0
