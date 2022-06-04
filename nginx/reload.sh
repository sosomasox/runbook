#!/bin/bash -x

sudo cp ./nginx.conf                            /etc/nginx/
sudo cp ./sites-available/runbook.sosomasox.com /etc/nginx/sites-available/

sudo systemctl restart nginx

exit 0
