#!/bin/bash
cd /var/www/node_cicd/

zip -r node-`date +%Y%m%d_%H%M%S`.zip /var/www/node_cicd/* && mv *.zip /bkp/

git pull origin dev

sudo npm install

#If your are using PM2. use below commands(un-comment)

pm2 start cms.js

pm2 -f restart cms
