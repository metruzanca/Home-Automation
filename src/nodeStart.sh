#!/bin/bash
echo "Running Home-Automation onBoot.js"
source .env
/home/ubuntu/.nvm/versions/node/v14.15.4/bin/node /opt/home-automation/src/onBoot.js
