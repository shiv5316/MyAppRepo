#!/bin/bash

echo "Starting Node.js application..."
cd /home/ec2-user/myapp

# Kill any running instance (optional cleanup)
pkill node || true

# Start app in the background and log output
nohup npm start > app.log 2>&1 &
