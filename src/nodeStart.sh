#!/bin/bash
echo "Running Home-Automation onBoot.js"
source /opt/home-automation/.env
WEBHOOK_TOKEN=$WEBHOOK_TOKEN /home/ubuntu/.nvm/versions/node/v14.15.4/bin/node /opt/home-automation/src/onBoot.js
