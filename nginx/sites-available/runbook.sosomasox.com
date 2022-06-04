server {
    listen 80;
    server_name runbook.sosomasox.com;

    include /etc/nginx/default.d/*.conf;

    location / {
        root /home/ubuntu/runbook/public;
        index index.html;
    }   
} 
