#!/bin/sh
set -e

GIT_BRANCH=${GIT_BRANCH:-main}

git fetch origin "$GIT_BRANCH"
git reset --hard "origin/$GIT_BRANCH"

cp *.conf /etc/nginx/conf.d/

nginx -t
systemctl reload nginx

certbot --nginx -n --agree-tos -m email@example.com --redirect -d example.com,www.example.com
