#!/bin/sh
set -e

GIT_BRANCH=${GIT_BRANCH:-main}

git fetch origin "$GIT_BRANCH"
git reset --hard "origin/$GIT_BRANCH"

sudo cp etc/nginx/conf.d/*.conf /etc/nginx/conf.d/

sudo nginx -t
sudo systemctl reload nginx

sudo certbot --nginx -n --agree-tos -m email@example.com --redirect -d example.com,www.example.com
