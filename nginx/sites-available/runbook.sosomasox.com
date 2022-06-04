server {
    listen 80;
    server_name runbook.sosomasox.com;

    include /etc/nginx/default.d/*.conf;

    location / {
        root /home/ubuntu/runbook/public;
        index index.html;
    }   

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/runbook.sosomasox.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/runbook.sosomasox.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

} 
