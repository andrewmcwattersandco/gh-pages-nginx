#!/bin/sh
set -e

GIT_BRANCH=${GIT_BRANCH:-main}

git fetch origin "$GIT_BRANCH"
git reset --hard "origin/$GIT_BRANCH"

sudo nginx-deploy
