#!/bin/bash
echo "Running Home-Automation BootHook"
source /opt/home-automation/.env
WEBHOOK_TOKEN=$WEBHOOK_TOKEN /home/ubuntu/.nvm/versions/node/v14.15.4/bin/node /opt/home-automation/BoohHook-Service/src/bootHook.js
